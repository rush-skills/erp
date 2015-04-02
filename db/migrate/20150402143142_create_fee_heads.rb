class CreateFeeHeads < ActiveRecord::Migration
  def change
    create_table :fee_heads do |t|
      t.references :fee, index: true
      t.string :name
      t.integer :amount
      t.boolean :discountable

      t.timestamps
    end
  end
end
