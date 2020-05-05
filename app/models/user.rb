class User < ApplicationRecord
  belongs_to :group, optional: true

end
