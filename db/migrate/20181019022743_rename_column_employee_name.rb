class RenameColumnEmployeeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :employee_name, :name
  end
end
