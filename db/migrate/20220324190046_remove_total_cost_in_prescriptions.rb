class RemoveTotalCostInPrescriptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescriptions, :totalcost
  end
end
