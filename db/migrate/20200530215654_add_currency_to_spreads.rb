class AddCurrencyToSpreads < ActiveRecord::Migration[6.0]
  def change
    add_column :spreads, :currency, :string
  end
end
