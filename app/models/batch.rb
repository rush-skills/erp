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

class Batch < ActiveRecord::Base
  belongs_to :course
  has_many :students
  has_many :course_students
end
