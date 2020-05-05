class Group < ApplicationRecord
  has_many :users
  has_many :spreads, as: :spreadable
end
