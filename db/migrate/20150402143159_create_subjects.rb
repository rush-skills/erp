class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.references :standard, index: true
      t.string :name

      t.timestamps
    end
  end
end
