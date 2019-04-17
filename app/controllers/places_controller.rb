require 'open_weather'

class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  rescue_from Pundit::NotAuthorizedError, with: :user_place_not_authorized
  before_action :authenticate_user!, except: [:show]
  after_action :verify_authorized
  
  extend PlacesHelper

  # GET /places
  # GET /places.json
  def index
    authorize Place
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.json
  def show
    authorize @place
    options = { units: "metric", APPID: Rails.application.credentials.open_weather_map_api_key}
    options[:cnt] = 7
    @weathers = OpenWeather::ForecastDaily.geocode(@place.latitude, @place.longitude, options)
    # byebug
  end

  # GET /places/new
  def new
    authorize Place
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
    authorize @place
  end

  # POST /places
  # POST /places.json
  def create
    authorize Place
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    authorize Place
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    authorize @place
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:name, :description, :picture, :latitude, :longitude)
    end

    def user_place_not_authorized
        redirect_to (home_places_path)
    end
end
