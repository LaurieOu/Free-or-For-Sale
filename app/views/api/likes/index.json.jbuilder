json.array!(@likes) do |like|
  json.id like.id
  json.user_id like.user_id
  json.listing_id like.listing_id
end
