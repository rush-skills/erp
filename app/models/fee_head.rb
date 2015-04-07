# == Schema Information
#
# Table name: fee_heads
#
#  id           :integer          not null, primary key
#  fee_id       :integer
#  name         :string(255)
#  amount       :integer
#  discountable :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

class FeeHead < ActiveRecord::Base
  belongs_to :fee

  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :discountable, on: :create, message: "can't be blank"
  validates_presence_of :amount, on: :create, message: "can't be blank"
  validates_presence_of :fee, on: :create, message: "can't be blank"

  rails_admin do
    visible false
  end

  def to_s
    self.name.to_s + " " + self.course.to_s
  end

end
