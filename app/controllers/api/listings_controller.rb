class Api::ListingsController < ApplicationController

  def index
    if(params[:category_name])
      if(params[:category_name] == "Home")
        @listings = Listing.where(university_id: current_user.university_id)
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
    new_listing_params = {}
    newImages = []
    urls = []

    if listing_params[:images]
      listing_params[:images].values.each do |url_image|
        newImages.concat([url_image])
        urls << url_image["url"]

        listing_params_keys = listing_params.keys[0..-2]
        listing_params_keys.each do |key|
          new_listing_params[key] = listing_params[key]
        end
      end

      inputParams = new_listing_params.merge(input_hash)
      @listing = Listing.new(inputParams)
    else
      @listing = Listing.new(listing_params.merge(input_hash))
    end


    if @listing.save
      if urls.length != 0
        urls.each do |url|
          Image.create({listing_id: @listing.id, url: url})
        end
      end

      render json: @listing
    end

  end

  # "images"=>{"0"=>{"url"=>"https://res.cloudinary.com/ddefvho7g/image/upload/v1456971511/whuo95rd8lt9kuxv415b.jpg"}}

  # images: [
  # {
  # url: "http://www.ardmorelittletheater.com/productions/past-seasons---archives/by-season/images/of-mice-and-men/of%20mice%20and%20men%20logo.jpg"
  # },
  # {
  # url: "http://ecx.images-amazon.com/images/I/51wuHv30-ML._SY344_BO1,204,203,200_.jpg"
  # },
  # {
  # url: "https://upload.wikimedia.org/wikipedia/commons/8/8b/Of_Mice_And_Men_Poster.jpg"
  # },
  # {
  # url: "http://www.trbimg.com/img-556de81c/turbine/la-et-jc-steinbeck-censorship-attempt-idaho-20-001/650/650x366"
  # }
  # ]

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
      :price, :address, :category_id, :images => [:url])
  end

end
