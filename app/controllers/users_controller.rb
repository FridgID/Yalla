class UsersController < ApplicationController
  def show
    @user = current_user
  end


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

  # private

  # def user_params
  #   params.require(:user).permit(:name, :email, :password)
  # end
end