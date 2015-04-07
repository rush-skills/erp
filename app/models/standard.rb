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

  accepts_nested_attributes_for :subjects, reject_if: ->(attributes){ attributes['name'].blank? },allow_destroy: true

  def to_s
    self.name.to_s
  end
end
