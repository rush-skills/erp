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
#  created_at :datetime
#  updated_at :datetime
#

class CourseStudent < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  belongs_to :batch
  has_many :payments
  has_many :installments
end
