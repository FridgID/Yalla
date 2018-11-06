class ToursController < ApplicationController

  def index
    @tours = policy_scope(Tour)
  end

  def show
    @tour = Tour.find(params[:id])
    authorize @tour
  end

  def new
    @tour = Tour.new
    authorize @tour
  end

  def confirm
    @tour = Tour.find(params[:id])
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.user = current_user
    authorize @tour
    if @tour.save!
      redirect_to tours_path
    else
      render 'new'
    end
  end

  def edit
    @tour = Tour.find(params[:id])
    authorize @tour
  end

  def update
    @tour = Tour.find(params[:id])
    @tour.update(tour_params)
    redirect_to tour_path
    authorize @tour
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy
    redirect_to tours_path
    authorize @tour
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :capacity, :category, :longitude, :latitude, :start_time, :end_time, :date, :location, :price_euro)
  end
end

