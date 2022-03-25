class Doctor < ApplicationRecord
    has_many :prescriptions
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :clinicname, presence: true
    validates :clinicaddress, presence: true
    validates :licensenumber, presence: true

end
