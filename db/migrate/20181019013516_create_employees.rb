class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :email
      t.integer :phone_number
      t.string :assistant_email
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
