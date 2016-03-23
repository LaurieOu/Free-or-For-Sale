class Api::LikesController < ApplicationController
  def create
    input_hash = {user_id: current_user.id, listing_id: like_params["listing_id"].to_i}

    @like = Like.new(input_hash)
    if @like.save
      if (like_params[:page] == "Home")
        @listings = Listing.all
      else
        @listings = Listing.where(category_id: like_params[:category_id])
      end
      render "api/listings/index"
    else
      render json: {errors: @like.errors.full_messages}, status: 420
    end
  end

  def destroy
        @like = Like.where(user_id: current_user.id, listing_id: like_params["listing_id"].to_i).first
        @like.destroy
        if (like_params[:page] == "Home")
          @listings = Listing.all
        else
          @listings = Listing.where(category_id: like_params[:category_id])
        end
        render "api/listings/index"
  end

  private

  def like_params
    params.require(:like).permit(:listing_id, :category_id, :page)
  end
end
