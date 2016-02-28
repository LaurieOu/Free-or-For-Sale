json.array! @comments do |comment|
  json.extract!(comment, :id, :user_id, :body, :listing_id)
end
