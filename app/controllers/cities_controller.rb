class CitiesController < ApplicationController
  def index; end

  def search
    @cities = search_cities
    render json: @cities, only: %i[name state_id]
  end

  private

  def search_cities
    if State.where(id: params[:state_id]).blank?
      City.contains_name(params[:name])
    else
      City.contains_name(params[:name]).where(state_id: params[:state_id])
    end
  end
end
