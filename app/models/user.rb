class User < ApplicationRecord
  has_many :post, dependent: :destroy
end
