json.extract! hospital_analyte, :id, :hospital, :analyte, :created_at, :updated_at
json.url hospital_analyte_url(hospital_analyte, format: :json)