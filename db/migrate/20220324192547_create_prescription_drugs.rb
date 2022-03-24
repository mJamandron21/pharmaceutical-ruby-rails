class CreatePrescriptionDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_drugs do |t|
      t.references :prescription, null: false, foreign_key: true
      t.references :drug, null: false, foreign_key: true

      t.timestamps
    end
  end
end
