class KitchensController < ApplicationController

  def index
    if params[:query].present?
      @query = params[:query]
      @kitchens = Kitchen.where("title iLike '%#{params[:query]}%'")
    else
      @kitchens = Kitchen.all
    end
  end

  # def new
  #   @kitchen = Kitchen.new
  # end

  # def create
  #   @kitchen = Kitchen.new(kitchen_params)
  #   if @kitchen.save
  #     redirect_to kitchens_path
  #   else
  #     render :new
  #   end
  # end

  # # def show
#   # #   @kitchen = Kitchen.find(params[:id])
#   # end

#   private

#   def kitchen_params
#     params.require(:kitchen).permit(:title, :address, :photo, :description, :amenities, :price, :rating, :capacity, :availability)
#   end
end










