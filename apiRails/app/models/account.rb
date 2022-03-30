class Account < ApplicationRecord
  belongs_to :person
  belongs_to :bank
end
