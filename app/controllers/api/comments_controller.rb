class Api::CommentsController < ApplicationController
  def create
    input_hash = {user_id: current_user.id, body: comment_params[:body], listing_id: comment_params[:listing_id]}

    @comment = Comment.new(input_hash)
    if @comment.save
      if comment_params[:page] == "Home"
        @listings = Listing.all
      else
        @listings = Listing.where(category_id: comment_params[:category_id])
      end
      render "api/listings/index"
    else
      render json: {}, status: 420
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :listing_id, :category_id, :page)
  end
end
