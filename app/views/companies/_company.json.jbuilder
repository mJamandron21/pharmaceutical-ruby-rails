json.extract! company, :id, :company_name, :company_address, :company_description, :created_at, :updated_at
json.url company_url(company, format: :json)
