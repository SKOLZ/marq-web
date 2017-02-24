class WebpageController < ApplicationController

  def about_us
  end

  def contact
  end

  def subscribe
    SubscriptionMailer.subscribe(params).deliver!
    redirect_to :root
  end

end
