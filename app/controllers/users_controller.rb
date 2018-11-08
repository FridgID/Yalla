class UsersController < ApplicationController
  def show
    @user = current_user
    @booked_tours = @user.bookings.map do |b| b.tour end
    @review_tour = @booked_tours.sample
  end

  def update
    @user = current_user
    # @photo = @user.photo
    if @user.update(user_params)
      flash[:notice] = "Successfully uploaded"
      redirect_to profile_path
    else
      raise
    end
  end

  # def create
  #   @user = User.new(user_params)
  #   respond_to do |format|
  #     if @user.save
  #       format.html {
  #         if params[:user][:avatar].present?
  #           render :crop  ## Render the view for cropping
  #         else
  #           redirect_to @user, notice: 'User was successfully created.'
  #         end
  #       }
  #       format.json { render action: 'show', status: :created, location: @user }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   @user = User.find(params[:id])
  #   @user.update(params[:email, :name])
  # end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #   redirect_to user_path(@user)
  #   else
  #     render :new
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
