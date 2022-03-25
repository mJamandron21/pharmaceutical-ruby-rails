class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :prescription_drugs, dependent: :destroy

  validates :date, presence: true
  validates :patient_fname, presence: true
  validates :patient_lname, presence: true
  validates :patient_address, presence: true
  validates :prescribedqty, presence: true
  validates :description, presence: true
end
