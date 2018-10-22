class AddLocationNameToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :location_name, :string
  end
end
