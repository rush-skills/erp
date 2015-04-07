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
  has_many :students, through: :admissions
  has_many :admissions
  validates_presence_of :course, on: :create, message: "can't be blank"
  rails_admin do
    field :course
    field :name
    list do 
      field :students
    end
  end
end
