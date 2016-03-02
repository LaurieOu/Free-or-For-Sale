class Api::LikesController < ApplicationController
  def create
    input_hash = {user_id: current_user.id}
    inputParams = like_params.merge(input_hash)
    inputParams["listing_id"] = inputParams["listing_id"].to_i

    @like = Like.new(inputParams)
    if @like.save
      @listings = Listing.all
      render "api/listings/index"
    else
      render json: {}, status: 420
    end
  end

  def destroy
    input_hash = {user_id: current_user.id, listing_id: params[:id]}


    @like = Like.where(input_hash).first
    @like.destroy
    @likes = Like.all
    @listings = Listing.all
    render "api/listings/index"
  end

  private

  def like_params
    params.require(:like).permit(:listing_id)
  end
end

# class Api::LikesController < ApplicationController
#   def index
#     @likes = Like.all
#   end
#
#   def create
#     input_hash = {user_id: current_user.id}
#     inputParams = like_params.merge(input_hash)
#     inputParams["listing_id"] = inputParams["listing_id"].to_i
#
#     @like = Like.new(inputParams)
#     if @like.save
#       render "api/listings/index"
#     else
#       render json: {}, status: 420
#     end
#   end
#
#   def destroy
#     input_hash = {user_id: current_user.id, listing_id: params[:id]}
#     @like = Like.where(input_hash).first
#     @like.destroy
#     @likes = Like.all
#     render "api/listings/index"
#   end
#
#   private
#
#   def like_params
#     params.require(:like).permit(:listing_id)
#   end
# end
