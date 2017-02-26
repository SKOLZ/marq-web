class WebpageController < ApplicationController

  def about_us
  end

  def contact
  end

  def subscribe
    SubscriptionMailer.perform_async(params)
    redirect_to :root
  end

end
