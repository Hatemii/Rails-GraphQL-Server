class CreateSpreads < ActiveRecord::Migration[6.0]
  def change
    create_table :spreads do |t|
      t.string :sale_spread
      t.string :currency
      t.references :user, null: true, foreign_key: true
      t.references :group, null: true, foreign_key: true

      t.timestamps
    end
  end
end
