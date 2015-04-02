class CreateAdditionalFees < ActiveRecord::Migration
  def change
    create_table :additional_fees do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
