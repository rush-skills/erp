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
end
