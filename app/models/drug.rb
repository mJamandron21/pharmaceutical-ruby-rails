class Drug < ApplicationRecord
   belongs_to :company
   has_many :prescription_drugs, dependent: :destroy

   validates :drug_genericname, presence: true
   validates :drug_brandname, presence: true
   validates :drug_dosage, presence: true
   validates :drug_price, presence: true
end
