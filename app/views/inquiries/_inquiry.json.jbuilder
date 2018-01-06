json.extract! inquiry, :id, :name, :email, :phone_number, :inquiry_type, :description, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
