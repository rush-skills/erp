# == Schema Information
#
# Table name: admissions
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
  belongs_to :firm

  has_many :payments
  has_many :installments

  validates_presence_of :course, on: :create, message: "can't be blank"
  validates_presence_of :student, on: :create, message: "can't be blank"
  validates_presence_of :batch, on: :create, message: "can't be blank"

  after_create :set_firm

  rails_admin do
    field :student
    field :course
    field :batch
    field :firm
    list do
      field :payments
      field :installments
    end
  end

  def set_firm
    firm_id ||= self.course.firm_id
  end

  def to_s
    self.student.to_s + self.course.to_s + self.batch.to_s
  end

end
