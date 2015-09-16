class WebpageController < ApplicationController

  def projects
    @categories = Category.all;
  end

  def about_us
  end

  def contact
  end

end
