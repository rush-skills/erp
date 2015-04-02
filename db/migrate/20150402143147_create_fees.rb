class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.references :course, index: true

      t.timestamps
    end
  end
end
