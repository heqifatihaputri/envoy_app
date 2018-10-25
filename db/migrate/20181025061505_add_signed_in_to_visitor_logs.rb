class AddSignedInToVisitorLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :visitor_logs, :signed_in, :boolean, default: false
    add_column :visitor_logs, :signed_out, :boolean, default: false
  end
end
