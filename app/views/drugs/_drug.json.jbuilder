json.extract! drug, :id, :drug_genericname, :drug_brandname, :drug_dosage, :drug_description, :drug_price, :companies_id, :created_at, :updated_at
json.url drug_url(drug, format: :json)
