class Api::ListingsController < ApplicationController

  def index
    @listings = Listing.all

    if (params[:university])
      @listings = Listing.where(university_id: params[:university])
    end
  end

  def create
    @listing = Listing.create!(listing_params)

    if @listing.save
      render json: create
    end
  end

  # def create
  #   listing = current_user.listings.create!(listing_params)
  #
  #   if listing.save
  #     render json: listing
  #   end
  # end
  #
  # def update
  #   listing = Listing.find(params[:id])
  #
  #   if (listing.user_id === current_user.id)
  #     listing.update(listing_params)
  #     render json: listing
  #   end
  # end
  #
  # def destroy
  #   listing = Listing.find(params[:listing][:id])
  #
  #   if (listing.user_id === current_user.id)
  #     listing.destroy
  #     render json: listing
  #   end
  # end

  private
  def listing_params
    params.require(:listing).permit(
      :title, :description,
      :price, :address,
      :university_id, :user_id,
      :category_id
      )
  end

end
