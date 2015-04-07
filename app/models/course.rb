# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  firm_id    :integer
#

class Course < ActiveRecord::Base
  has_one :fee
  has_many :batches
  has_many :admissions
  has_and_belongs_to_many :subjects
  belongs_to :firm
  accepts_nested_attributes_for :fee, reject_if: ->(attributes){ attributes['name'].blank? },allow_destroy: true
  validates_presence_of :fee, on: :create, message: "can't be blank"
end
