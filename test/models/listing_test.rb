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

require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
