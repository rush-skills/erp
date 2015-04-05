# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  course_id     :integer
#  batch_id      :integer
#  name          :string(255)
#  roll_no       :string(255)
#  gender        :integer
#  school        :string(255)
#  phone_1       :string(255)
#  phone_2       :string(255)
#  date_of_birth :date
#  created_at    :datetime
#  updated_at    :datetime
#

class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :batch
  has_many :additional_fee_payments
  has_many :course_students
  has_one :address
  validates_presence_of :course, on: :create, message: "can't be blank"
  validates_presence_of :batch, on: :create, message: "can't be blank"
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :address, on: :create, message: "can't be blank"
  accepts_nested_attributes_for :address, reject_if: ->(attributes){ attributes['name'].blank? },allow_destroy: true
  validates_presence_of :address, on: :create, message: "can't be blank"
  validates_associated :address, on: :create
end
