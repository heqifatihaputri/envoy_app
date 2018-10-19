class RemoveLocationNameFromVisitorLogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :visitor_logs, :location_name
  end
end
