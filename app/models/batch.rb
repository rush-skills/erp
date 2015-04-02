class Batch < ActiveRecord::Base
  belongs_to :course
  has_many :students
  has_many :course_students
end
