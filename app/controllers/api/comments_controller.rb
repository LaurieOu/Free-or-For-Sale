class Api::CommentsController < ApplicationController
  def create
    input_hash = {user_id: current_user.id}
    inputParams = comment_params.merge(input_hash)


    @comment = Comment.new(inputParams)
    if @comment.save
      @listings = Listing.all
      render "api/listings/index"
    else
      render json: {}, status: 420
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :listing_id)
  end
end
