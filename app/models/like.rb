# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  listing_id :integer          not null
#  user_id    :integer          not null
#  comment_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ActiveRecord::Base
  belongs_to :listing
  belongs_to :comment
  belongs_to :user

  validates :listing, presence: true
  validates :user_id,uniqueness: {scope: :listing_id,
    message: "can only like once"}
end
