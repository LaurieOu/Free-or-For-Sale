
result = json.array! @listings.reverse do |listing|
  # json.title listing.title
  json.extract!(listing, :title, :description, :price, :id, :category_id)
  json.timestamp listing.date_and_time
  json.university listing.university.name
  json.user listing.user.username
  json.category listing.category.category_name
  json.profile_picture listing.user.image

  json.comments(listing.comments) do |comment|
    json.id comment.id
    # json.thumbnail comment.commenter.profile_picture.image.url(:thumb)
    json.date_and_time comment.date_and_time
    json.body comment.body
    json.listing_id comment.listing_id
    json.user comment.user.username
    json.image comment.user.image
  end

  json.likersListing(listing.likers) do |liker|
    json.user_id liker.id
    json.username liker.username
  end

  json.images(listing.images) do |image|
    json.url image.url
    json.id image.id
  end
end
