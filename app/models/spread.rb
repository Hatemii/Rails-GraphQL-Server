class Spread < ApplicationRecord
  belongs_to :spreadable, polymorphic: true, optional:true
end
