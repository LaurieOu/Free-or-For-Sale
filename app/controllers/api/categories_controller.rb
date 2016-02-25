class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all

    if (params[:category])
      @categories = Category.where(category_id: params[:category])
    end
  end
end
