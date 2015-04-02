class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :batch
  has_many :additional_fee_payments
  has_many :course_students
  has_one :address
end
