class WelcomeController < ApplicationController
  def index
    @events = Event.by_hidden_status() # sử dụng scope
  end
end
