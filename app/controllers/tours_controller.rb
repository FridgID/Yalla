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

  def confirm
    @tour = Tour.find(params[:id])
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      redirect_to tour_path(@tour)
    else
      render 'new'
    end
  end

  def edit

  end

  private

  def tour_params
    params.require(:tour).permit(:title, :capacity, :category, :longitude, :latitude, :start_time, :end_time, :date, :location, :price_euro, :user_id)
  end
end

