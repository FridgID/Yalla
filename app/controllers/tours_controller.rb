class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category]
      @tours = policy_scope(Tour).where(category: params[:category])
    else
      @tours = policy_scope(Tour)
    end
  end

  def show
    @tour = Tour.find(params[:id])
    @markers = [{ lat: @tour.latitude, lng: @tour.longitude }]
    authorize @tour
  end

  def new
    @tour = Tour.new
    authorize @tour
  end

  def confirm
    @tour = Tour.find(params[:id])
    authorize @tour
  end

  def book
    @tour = Tour.find(params[:id])
    booking = Booking.new
    booking.tour = @tour
    booking.user = current_user
    if booking.save
      # happy path
      flash[:notice] = "Confirmation mail sent"
      redirect_to tour_path(@tour)
    else
      # booking failed ( maybe booked already )
      flash[:alert] = "Something went wrong! Maybe you booked the tour already."
      redirect_to tour_path(@tour)
    end

    authorize @tour
  end

  def cancel_book
    tour = Tour.find(params[:id])
    current_user.cancel_booking(tour)
    redirect_to tour_path(tour)

    authorize tour
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
    redirect_to tours_path
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
    params.require(:tour).permit(:title, :description, :capacity, :category, :longitude, :latitude, :start_time, :end_time, :date, :location, :price_euro)
  end
end

