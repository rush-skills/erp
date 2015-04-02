class AdditionalFeePayment < ActiveRecord::Base
  belongs_to :student
  belongs_to :additional_fee
end
