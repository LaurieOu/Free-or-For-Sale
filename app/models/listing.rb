# == Schema Information
#
# Table name: listings
#
#  id            :integer          not null, primary key
#  title         :string           not null
#  description   :text
#  price         :integer          not null
#  university_id :integer          not null
#  user_id       :integer          not null
#  category_id   :integer          not null
#  archived      :boolean          default(FALSE), not null
#  address       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Listing < ActiveRecord::Base
  validates :title, :price, :university_id, :user_id, :archived, presence: true
  belongs_to :user
  belongs_to :university
  belongs_to :category
  has_many :comments
  has_many :likes
  has_many :images

  has_many(
    :likers,
    through: :likes,
    source: :user
  )

  def date_and_time
    t = self.created_at.in_time_zone('Eastern Time (US & Canada)')
    t.strftime("%B") + " " + t.strftime("%d") + " " + t.strftime("%Y") + " " + t.strftime('%r')
  end


end
