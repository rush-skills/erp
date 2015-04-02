class Payment < ActiveRecord::Base
  belongs_to :course_student
  belongs_to :installment
end
