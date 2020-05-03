class StaticPagesController < ApplicationController
  def home
    if Rails.env.production?
      @user_location = request.location
    end

    @locations = Location.all
  end
end
