class PrescriptionDrug < ApplicationRecord
  belongs_to :drugs
  belongs_to :prescriptions
end
