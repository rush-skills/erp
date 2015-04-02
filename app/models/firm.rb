class Firm < ActiveRecord::Base
  has_one :address
  has_many :courses
end
