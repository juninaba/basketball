class Room < ApplicationRecord
  has_many :room_messages
  has_many :room_users
end
