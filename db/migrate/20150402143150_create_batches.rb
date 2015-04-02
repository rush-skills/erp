class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.references :course, index: true
      t.string :name

      t.timestamps
    end
  end
end
