class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :company_name
      t.text :address

      t.timestamps
    end
  end
end
