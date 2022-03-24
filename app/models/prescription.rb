class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :prescription_drugs, dependent: :destroy
end
