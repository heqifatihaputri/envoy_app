class AddLocationIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :location_id, :integer
  end
end
