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
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :country
      t.timestamps
    end
  end
end
