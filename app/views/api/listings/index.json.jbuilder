json.array! @listings do |listing|
  # json.title listing.title
  json.extract!(listing, :title, :description, :price, :id)
  json.university listing.university.name
  json.user listing.user.username
  json.category listing.category.category_name
  # json.user listing.user.email
  # json.description listing.description
  # json.price listing.price
  # json.address listing.address
  # json.category_id listing.category_id
  # json.university_id listing.university_id
  # json.id listing.id
  # json.user_id listing.user_id
  # json.create_date distance_of_time_in_words_to_now(listing.created_at)
  # json.archived listing.archived
end
