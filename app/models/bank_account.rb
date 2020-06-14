class BankAccount < ApplicationRecord
  belongs_to :user, optional:true

  validates_presence_of :currency
  validates_presence_of :iban
  validates_presence_of :bank_name

end
