class User < ApplicationRecord
  belongs_to :group, optional: true
  has_many :spreads, as: :spreadable
end
