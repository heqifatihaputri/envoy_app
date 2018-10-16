class CreateVisitorLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :visitor_logs do |t|
      t.string :location_name
      t.text :purpose_of_visit
      t.string :your_email_address
      t.string :your_full_name
      t.text :private_notes

      t.timestamps
    end
  end
end
