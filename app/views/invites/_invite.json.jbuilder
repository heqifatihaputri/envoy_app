json.extract! invite, :id, :location_id, :arrival, :full_name, :host, :private_notes, :created_at, :updated_at
json.url invite_url(invite, format: :json)
