class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :capacity, :category, :longitude, :latitude, :start_time, :end_time, :date, :location, :price_euro, :user_id)
  end
end

