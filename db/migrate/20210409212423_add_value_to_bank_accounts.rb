class AddValueToBankAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :bank_accounts, :value, :integer
  end
end
