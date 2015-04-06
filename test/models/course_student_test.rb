# == Schema Information
#
# Table name: course_students
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  student_id :integer
#  batch_id   :integer
#  discount   :integer
#  total      :integer
#  firm_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CourseStudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
