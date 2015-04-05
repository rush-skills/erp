# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  course_id     :integer
#  batch_id      :integer
#  name          :string(255)
#  roll_no       :string(255)
#  gender        :integer
#  school        :string(255)
#  phone_1       :string(255)
#  phone_2       :string(255)
#  date_of_birth :date
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
