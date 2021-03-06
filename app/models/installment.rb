# == Schema Information
#
# Table name: installments
#
#  id           :integer          not null, primary key
#  admission_id :integer
#  due_on       :date
#  amount       :integer
#  title        :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Installment < ActiveRecord::Base
  belongs_to :admission

  has_one :payment

  validates_presence_of :admission, on: :create, message: "can't be blank"
  validates_presence_of :due_on, on: :create, message: "can't be blank"
  validates_presence_of :amount, on: :create, message: "can't be blank"
  validates_presence_of :title, on: :create, message: "can't be blank"

  rails_admin do
    visible false
  end

  def to_s
    self.title
  end

end
