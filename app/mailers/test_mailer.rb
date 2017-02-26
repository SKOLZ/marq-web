class TestMailer
  include Sidekiq::Worker
  include HTTParty
  MAIL      = AppConfiguration.for :mailgun
  VIEW_PATH = 'app/views/subscription_mailer'.freeze
  VIEW_FILE = 'subscribe.html.slim'.freeze

  attr_reader :data

  def perform(to, params)
    @data = {}
    @data[:from]    = MAIL.smtp_login
    @data[:to]      = to
    @data[:subject] = 'Nueva consulta Marq Web'
    @data[:html]    = html(params)
    deliver
  end

  def deliver
    self.class.post(uri, body: @data)
  end

  private
  def html(params)
    view = ActionView::Base.new(VIEW_PATH)
    view.render(file: VIEW_FILE, locals: { :@params => params })
  end

  def uri
    "https://api:#{MAIL.api_key}@api.mailgun.net/v3/#{MAIL.domain}/messages"
  end
end
