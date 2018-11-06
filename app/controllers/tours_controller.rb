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
    @tour.user = current_user
    if @tour.save!
      redirect_to tours_path
    else
      render 'new'
    end
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy
    redirect_to tours_path
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :capacity, :category, :longitude, :latitude, :start_time, :end_time, :date, :location, :price_euro, :user_id)
  end
end

