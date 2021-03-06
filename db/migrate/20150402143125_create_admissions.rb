class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.references :course, index: true
      t.references :student, index: true
      t.references :batch, index: true
      t.integer :discount
      t.integer :total
      t.references :firm, index: true
      t.timestamps
    end
  end
end
