class AddBankNameAndPrimaryToBankAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :bank_accounts, :bank_name, :string
    add_column :bank_accounts, :primary, :boolean
  end
end
