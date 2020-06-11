class AddTradingLimitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :trading_limit, :string
  end
end
