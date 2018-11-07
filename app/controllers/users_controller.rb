class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
    @user = current_user
    # @photo = @user.photo
    if @user.update(photo: @user.photo)
      redirect_to profile_path
    else
      raise
    end
    raise
  end

  # def update
  #     @user = current_user
  #     @task = @user.task.find(params[:id])
  #     if @task.update_attributes(task_params)
  #       flash[:success] = "Task updated!"
  #       redirect_to user_tasks_path(current_user)
  #     else
  #       render action: :edit
  #     end
  #   end


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
