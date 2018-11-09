class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.tour_id = params[:tour_id]
    @tour = Tour.find(params[:tour_id])
    @review.rating = params[:rating]
    if @review.save
      # happy path
      respond_to do |format|
        format.html { redirect_to tour_path(params[:tour_id]) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      # bad path
      # TODO: tell the user that it failed
      # TODO: implemnet ajax error message
      redirect_to tour_path(params[:tour_id])
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :tour_id)
  end
end
