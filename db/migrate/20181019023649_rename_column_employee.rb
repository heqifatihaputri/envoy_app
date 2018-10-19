class RenameColumnEmployee < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :name, :full_name
  end
end
