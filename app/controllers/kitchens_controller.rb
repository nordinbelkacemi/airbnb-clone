class KitchensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @query = params[:query]
      @kitchens = Kitchen.where("title iLike '%#{params[:query]}%'")
    else
      @kitchens = Kitchen.all
    end
    @kitchens = Kitchen.where.not(latitude: nil, longitude: nil)
    @markers = @kitchens.map do |kitchen|
      {
        lat: kitchen.latitude,
        lng: kitchen.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])
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

#   private

#   def kitchen_params
#     params.require(:kitchen).permit(:title, :address, :photo, :description, :amenities, :price, :rating, :capacity, :availability)
#   end
end
