class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :bdate
      t.string :email
      t.string :phonenumber
      t.string :gender
      t.string :clinicname
      t.string :clinicaddress
      t.string :licensenumber

      t.timestamps
    end
  end
end
