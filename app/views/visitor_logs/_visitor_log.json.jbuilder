json.extract! visitor_log, :id, :location_name, :purpose_of_visit, :your_email_address, :your_full_name, :private_notes, :created_at, :updated_at
json.url visitor_log_url(visitor_log, format: :json)
