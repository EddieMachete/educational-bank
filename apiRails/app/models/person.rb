class Person < ApplicationRecord
  validates :firstName, presence: true
  validates :lastName, presence: true
  has_many :accounts, dependent: :destroy
end
