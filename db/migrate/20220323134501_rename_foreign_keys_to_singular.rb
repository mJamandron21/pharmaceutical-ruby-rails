class RenameForeignKeysToSingular < ActiveRecord::Migration[6.1]
  def change
    rename_column :drugs, :companies_id, :company_id
    rename_column :prescriptions, :doctors_id, :doctor_id
    rename_column :prescription_drugs, :drugs_id, :drug_id
    rename_column :prescription_drugs, :prescriptions_id, :prescription_id
  end
end
