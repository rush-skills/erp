# == Schema Information
#
# Table name: subjects
#
#  id          :integer          not null, primary key
#  standard_id :integer
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Subject < ActiveRecord::Base
  belongs_to :standard

  has_and_belongs_to_many :courses

  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :standard, on: :create, message: "can't be blank"

  rails_admin do
    visible false
  end

  def to_s
    self.standard.to_s + " " + self.name.to_s
  end

end
