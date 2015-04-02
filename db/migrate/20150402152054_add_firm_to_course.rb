class AddFirmToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :firm, index: true
  end
end
