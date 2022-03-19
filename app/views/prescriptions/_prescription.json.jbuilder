json.extract! prescription, :id, :date, :patient_fname, :patient_mname, :patient_lname, :patient_address, :prescribedqty, :totalcost, :description, :doctors_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
