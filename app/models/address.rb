class Address < ActiveRecord::Base
  belongs_to :firm
  belongs_to :student
end
