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
#  line_1                 :string(255)
#  line_2                 :string(255)
#  city                   :string(255)
#  country                :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class Firm < ActiveRecord::Base
  has_many :courses
  has_many :admissions

  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :service_tax_applicable, on: :create, message: "can't be blank"
  validates_presence_of :line_1, on: :create, message: "can't be blank"
  validates_presence_of :city, on: :create, message: "can't be blank"
  validates_presence_of :country, on: :create, message: "can't be blank"

  rails_admin do
    field :name
    field :financial_year
    field :academic_year
    field :service_tax_applicable
    field :service_tax_rate
    field :service_tax_number
    field :line_1
    field :line_2
    field :city
    field :country
  end

  def to_s
    self.name.to_s
  end

end
