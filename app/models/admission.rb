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

class Admission < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  belongs_to :batch
  has_many :payments
  has_many :installments
  validates_presence_of :course, on: :create, message: "can't be blank"
  validates_presence_of :student, on: :create, message: "can't be blank"
  validates_presence_of :batch, on: :create, message: "can't be blank"
end