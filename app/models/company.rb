class Company < ApplicationRecord
    has_many :drugs, dependent: :destroy
    validates :company_name, presence: true
    validates :company_address, presence: true
    validates :company_description, presence: false
end
