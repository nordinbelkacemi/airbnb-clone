class KitchensController < ApplicationController
  before_action :set_kitchen, only: [:edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if current_user == nil
      @kitchens = Kitchen.all
    else
      @kitchens = Kitchen.where.not(user_id: current_user.id)
    end
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

  def edit
  end

  def update
    @kitchen.update(kitchen_params_update)
    redirect_to dashboard_path
  end

  def destroy
    if @kitchen.booked?
      redirect_to dashboard_path, notice: "Kitchen booked ! can't delete"
    else
      @kitchen.destroy
      redirect_to dashboard_path
    end
  end

  private

  def kitchen_params
    prms = params.require(:kitchen).permit(:title, :description, :address, :photo, :capacity, :amenities, :price)
    prms[:user_id] = current_user.id
    prms[:created_at] = DateTime.now
    return prms
  end

  def kitchen_params_update
    prms = params.require(:kitchen).permit(:title, :description, :address, :photo, :capacity, :amenities, :price)
    prms[:user_id] = current_user.id
    prms[:updated_at] = DateTime.now
    return prms
  end

  def set_kitchen
    @kitchen = Kitchen.find(params[:id])
  end
end
