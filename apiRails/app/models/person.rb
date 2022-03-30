class Person < ApplicationRecord
    has_many :accounts, dependent: :destroy
end
