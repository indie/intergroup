# == Schema Information
#
# Table name: meetings
#
#  id         :integer          not null, primary key
#  day        :string(255)
#  name       :string(255)
#  address    :string(255)
#  city       :string(255)
#  codes      :string(255)
#  map        :string(255)
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MeetingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
