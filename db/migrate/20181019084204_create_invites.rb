class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.integer :location_id
      t.datetime :arrival
      t.string :full_name
      t.string :host
      t.text :private_notes

      t.timestamps
    end
  end
end
