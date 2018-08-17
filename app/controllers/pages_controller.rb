class PagesController < ApplicationController
  before_action :set_user, only: [:profile, :edit, :update, :destroy]

  def home
  end

  def dashboard
    @user_kitchens = current_user.kitchens
  end

  def profile
    @user_kitchens = @user.kitchens
  end

  def edit
  end

  def update
    @user.update(user_params_update)
    redirect_to dashboard_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params_update
    params.require(:user).permit(:username, :photo, :bio, :from)
  end
end
