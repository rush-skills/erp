class Course < ActiveRecord::Base
  has_one :fee
  has_many :batches
  has_many :course_students
  has_and_belongs_to_many :subjects
end
