# == Schema Information
#
# Table name: installments
#
#  id                :integer          not null, primary key
#  course_student_id :integer
#  due_on            :date
#  amount            :integer
#  title             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class InstallmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
