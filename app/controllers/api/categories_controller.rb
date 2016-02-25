class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all 

    if (params[:university])
      @listings = Listing.where(university_id: params[:university])
    end
  end
end
