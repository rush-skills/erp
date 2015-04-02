class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :course_student, index: true
      t.references :installment, index: true
      t.date :paid_on
      t.integer :amount

      t.timestamps
    end
  end
end
