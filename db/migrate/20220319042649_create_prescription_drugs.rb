class CreatePrescriptionDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_drugs do |t|
      t.references :drugs, null: false, foreign_key: true
      t.references :prescriptions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
