class BankMember < ApplicationRecord
    has_many :accounts, dependent: :destroy
end
