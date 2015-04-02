class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :country
      t.references :firm, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
