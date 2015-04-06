class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :name
      t.string :financial_year
      t.string :academic_year
      t.boolean :service_tax_applicable
      t.decimal :service_tax_rate
      t.string :service_tax_number
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :country
      t.timestamps
    end
  end
end
