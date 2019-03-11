class WelcomeController < ApplicationController
  def index
    @events = Event.where(hidden_status: false)
  end
end
