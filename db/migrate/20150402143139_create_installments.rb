class CreateInstallments < ActiveRecord::Migration
  def change
    create_table :installments do |t|
      t.references :admission, index: true
      t.date :due_on
      t.integer :amount
      t.string :title

      t.timestamps
    end
  end
end
