json.extract! physician, :id, :physician_name, :physician_phone_number, :physician_type, :created_at, :updated_at
json.url physician_url(physician, format: :json)