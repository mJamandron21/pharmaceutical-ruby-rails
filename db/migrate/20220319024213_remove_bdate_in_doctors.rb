class RemoveBdateInDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :bdate
  end
end
