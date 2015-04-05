# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  line_1     :string(255)
#  line_2     :string(255)
#  city       :string(255)
#  country    :string(255)
#  firm_id    :integer
#  student_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Address < ActiveRecord::Base
  belongs_to :firm
  belongs_to :student
  validates_presence_of :line_1, on: :create, message: "can't be blank"
  validates_presence_of :city, on: :create, message: "can't be blank"
  validates_presence_of :country, on: :create, message: "can't be blank"
end
