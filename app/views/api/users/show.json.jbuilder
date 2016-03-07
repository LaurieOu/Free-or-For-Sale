  json.extract!(@user, :id, :image, :username)
  json.listings @user.listings
