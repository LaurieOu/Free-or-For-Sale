# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  url         :string           not null
#  listing_id  :integer          not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Image < ActiveRecord::Base
  validates :url, :listing_id, presence: true

  belongs_to :listing 
end
