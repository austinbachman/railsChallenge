json.extract! patient, :id, :patient_name, :patient_address, :patient_phone_number, :created_at, :updated_at
json.url patient_url(patient, format: :json)