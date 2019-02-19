class Room < ApplicationRecord
  has_many :messages
  has_one :relationship
end
