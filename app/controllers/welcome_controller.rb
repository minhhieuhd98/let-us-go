class WelcomeController < ApplicationController
  extend WelcomeHelper
  def index
    @events = Event.by_hidden_status() # sử dụng scope
  end

  def place_index
    @places = Place.all
  end
end
