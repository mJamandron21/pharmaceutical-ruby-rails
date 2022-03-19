json.extract! doctor, :id, :firstname, :middlename, :lastname, :bdate, :email, :phonenumber, :gender, :clinicname, :clinicaddress, :licensenumber, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
