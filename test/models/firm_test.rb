# == Schema Information
#
# Table name: firms
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  financial_year         :string(255)
#  academic_year          :string(255)
#  service_tax_applicable :boolean
#  service_tax_rate       :decimal(, )
#  service_tax_number     :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

require 'test_helper'

class FirmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
