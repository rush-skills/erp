# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  roll_no       :string(255)
#  gender        :integer
#  school        :string(255)
#  phone_1       :string(255)
#  phone_2       :string(255)
#  date_of_birth :date
#  line_1        :string(255)
#  line_2        :string(255)
#  city          :string(255)
#  country       :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Student < ActiveRecord::Base
  extend Enumerize
  has_many :additional_fee_payments
  has_many :course_students
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :line_1, on: :create, message: "can't be blank"
  validates_presence_of :city, on: :create, message: "can't be blank"
  validates_presence_of :country, on: :create, message: "can't be blank"
  enumerize :gender, in: {:male => 1, :female => 2}, default: :male
end
