class PagesController < ApplicationController
  def home
  end

  def profile
    @user_kitchens = current_user.kitchens
  end
end
