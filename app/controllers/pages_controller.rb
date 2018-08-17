class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user_kitchens = current_user.kitchens
  end

  def profile
    @user = User.find(params[:id])
    @user_kitchens = @user.kitchens
  end
end
