class AddSpreadableToSpreads < ActiveRecord::Migration[6.0]
  def change
    add_reference :spreads, :spreadable, polimorphic: true, null: true
  end
end
