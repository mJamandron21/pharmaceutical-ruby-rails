class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.string :drug_genericname
      t.string :drug_brandname
      t.string :drug_dosage
      t.text :drug_description
      t.decimal :drug_price
      t.references :companies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
