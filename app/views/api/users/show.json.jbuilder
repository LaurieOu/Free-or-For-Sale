  json.extract!(@user, :id, :image)
  json.listings @user.listings
