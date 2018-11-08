class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.tour_id = params[:tour_id]
    if @review.save
      # happy path
      redirect_to tour_path(params[:tour_id])
    else
      # bad path
      # TODO: tell the user that it failed
      redirect_to tour_path(params[:tour_id])
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :tour_id)
  end
end
