# == Schema Information
#
# Table name: batches
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class BatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
