class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.string :currency
      t.string :iban

      t.timestamps
    end
  end
end
