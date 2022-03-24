class Company < ApplicationRecord
    has_many :drugs, dependent: :destroy
end
