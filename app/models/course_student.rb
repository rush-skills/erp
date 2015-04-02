class CourseStudent < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  belongs_to :batch
  has_many :payments
  has_many :installments
end
