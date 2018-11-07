class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home?
    true
  end

  def home
    if params[:confirm]
      flash[:notice] = "Confirmation mail sent"
    end
  end
end
