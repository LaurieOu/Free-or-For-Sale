class Api::ListingsController < ApplicationController

  def index
    if(params[:category_name])
      if(params[:category_name] == "Home")
        @listings = Listing.all 
      else
        category_id = Category.find_by(category_name: params[:category_name]).id
        @listings = Listing.where(category_id: category_id, university_id: current_user.university_id)
      end
    elsif (params[:categories])
      @listings = Listing.where(category_id: params[:categories], university_id: current_user.university_id)
    else
      @listings = Listing.where(university_id: current_user.university_id).includes(:university, :user, :category, :comments, :likers)
    end
  end


  def create
    input_hash = {university_id: current_user.university_id, user_id: current_user.id, archived: true}
    inputParams = listing_params.merge(input_hash)

    @listing = Listing.new(inputParams)
    if @listing.save
      render json: @listing
    end

  end


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
      :price, :address, :category_id
      )
  end

end
