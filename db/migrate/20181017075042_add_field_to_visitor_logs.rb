class AddFieldToVisitorLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :visitor_logs, :sign_in_time, :datetime
    add_column :visitor_logs, :sign_out_time, :datetime
    add_column :visitor_logs, :nda_pdf_url, :string
    add_column :visitor_logs, :photo_url, :string
    add_column :visitor_logs, :host, :string
  end
end
