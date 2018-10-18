class AddLocationIdToVisitorLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :visitor_logs, :location_id, :integer
  end
end
