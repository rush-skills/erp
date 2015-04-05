class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :roll_no
      t.integer :gender
      t.string :school
      t.string :phone_1
      t.string :phone_2
      t.date :date_of_birth

      t.timestamps
    end
  end
end
