json.array! @categories do |category|
  json.extract!(category, :category_name)
end
