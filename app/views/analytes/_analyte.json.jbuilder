json.extract! analyte, :id, :analyte_name, :result_range, :created_at, :updated_at
json.url analyte_url(analyte, format: :json)