class Api::CommentsController < ApplicationController
  def create
    input_hash = {user_id: current_user.id, body: comment_params[:body], listing_id: comment_params[:listing_id]}

    @comment = Comment.new(input_hash)
    if @comment.save
      @listings = Listing.where(category_id: comment_params[:category_id])
      render "api/listings/index"
    else
      render json: {}, status: 420
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :listing_id, :category_id)
  end
end
