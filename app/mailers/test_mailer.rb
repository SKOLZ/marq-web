class TestMailer < DefaultMailer
  def try_send(to)
    @time_sent = Time.zone.now
    mail(to: to, subject: "[Test] Marq mailer")
  end
end
