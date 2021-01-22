class CitiesController < ApplicationController
  def index; end

  def search
    @cities = City.contains_name(params[:name]).where(state_id: params[:state_id])
    render json: @cities.all
  end
end
