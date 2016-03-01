class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all

    if (params[:category_name])
      @categories = Category.where(category_name: params[:category_name])
    end
  end

end
