class Like < ActiveRecord::Base
  belongs_to :listing
  belongs_to :comment
  belongs_to :user

  validates :listing, presence: true
  validates :user_id,uniqueness: {scope: :listing_id,
    message: "can only like once"}
end
