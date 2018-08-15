class KitchensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @kitchens = Kitchen.where.not(user_id: current_user.id)
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    if @kitchen.save
      redirect_to kitchens_path
    else
      render :new
    end
  end

  private

  def kitchen_params
    prms = params.require(:kitchen).permit(:title, :description, :address, :photo, :capacity, :amenities, :price)
    prms[:user_id] = current_user.id
    prms[:created_at] = DateTime.now
    return prms
  end
end
