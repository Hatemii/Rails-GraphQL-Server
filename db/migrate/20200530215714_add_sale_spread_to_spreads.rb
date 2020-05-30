class AddSaleSpreadToSpreads < ActiveRecord::Migration[6.0]
  def change
    add_column :spreads, :sale_spread, :string
  end
end
