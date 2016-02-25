json.extract!(
  @listing,
  :title, :description, :price, :address, :university_id, :user_id, :category_id
)

json.created_at do
  json.created_at @listing.created_at.to_datetime.to_i
end
