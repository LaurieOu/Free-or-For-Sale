class Api::UsersController < ApplicationController
  # def index
  #   @user_listings = current_user.listings
  # end


  def show
    @user = current_user
  end
end
