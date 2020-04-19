class StaticPagesController < ApplicationController
  def home
    @locations = Location.all
  end
end
