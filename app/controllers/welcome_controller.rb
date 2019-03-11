class WelcomeController < ApplicationController
  def index
    @events = Event.where(hidden_status: false) # sử dụng scope
  end
end
