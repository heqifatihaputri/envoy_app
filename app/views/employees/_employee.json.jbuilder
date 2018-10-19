json.extract! employee, :id, :full_name, :email, :phone_number, :assistant_email, :deleted_at, :created_at, :updated_at
json.url employee_url(employee, format: :json)
