class PrescriptionDrug < ApplicationRecord
  belongs_to :drug
  belongs_to :prescription
end
