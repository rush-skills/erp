# == Schema Information
#
# Table name: fees
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Fee < ActiveRecord::Base
  belongs_to :course

  has_many :fee_heads

  accepts_nested_attributes_for :fee_heads, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true

  validates_presence_of :course, on: :create, message: "can't be blank"

  rails_admin do
    field :fee_heads
    field :total do
      def value
        total = 0
        bindings[:object].fee_heads.each do |x|
          total += x.amount
        end
        total
      end
    end
    visible false
  end

  def to_s
    self.course.name + " fees"
  end

  def value
    total = 0
    self.fee_heads.each do |x|
      total += x.amount
    end
    total
  end

  def apply_discount_total(discount)
    total = 0
    self.fee_heads.each do |x|
      total += (x.amount - (x.amount * discount/100.0))
    end
    total
  end

end