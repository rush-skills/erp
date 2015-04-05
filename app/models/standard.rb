# == Schema Information
#
# Table name: standards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Standard < ActiveRecord::Base
  has_many :subjects
  validates_presence_of :name, on: :create, message: "can't be blank"
end
