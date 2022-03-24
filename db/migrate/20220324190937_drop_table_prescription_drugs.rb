class DropTablePrescriptionDrugs < ActiveRecord::Migration[6.1]
  def change
    drop_table :prescription_drugs
  end
end
