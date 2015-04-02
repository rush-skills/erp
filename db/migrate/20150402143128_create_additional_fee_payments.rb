class CreateAdditionalFeePayments < ActiveRecord::Migration
  def change
    create_table :additional_fee_payments do |t|
      t.references :student, index: true
      t.references :additional_fee, index: true
      t.integer :paid
      t.date :paid_on

      t.timestamps
    end
  end
end
