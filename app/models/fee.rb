class Fee < ActiveRecord::Base
  belongs_to :course
  has_many :fee_heads
end
