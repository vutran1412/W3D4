# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  author     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll       :text             not null
#

require 'test_helper'

class PollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
