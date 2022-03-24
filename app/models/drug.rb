class Drug < ApplicationRecord
   belongs_to :company
   has_many :prescription_drugs, dependent: :destroy
end
