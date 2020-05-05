class CreateSpreads < ActiveRecord::Migration[6.0]
  def change
    create_table :spreads do |t|
      t.references :spreadable, polymorphic: true, null: true

      t.timestamps
    end
  end
end
