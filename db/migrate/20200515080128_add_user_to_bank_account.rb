class AddUserToBankAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :bank_accounts, :user, null: true, foreign_key: true
  end
end
