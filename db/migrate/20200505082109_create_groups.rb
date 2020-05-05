class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :purchase_spread
      t.string :sale_spread

      t.timestamps
    end
  end
end
