class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.date :date
      t.string :patient_fname
      t.string :patient_mname
      t.string :patient_lname
      t.string :patient_address
      t.integer :prescribedqty
      t.decimal :totalcost
      t.text :description
      t.references :doctors, null: false, foreign_key: true

      t.timestamps
    end
  end
end
