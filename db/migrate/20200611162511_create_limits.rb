class CreateLimits < ActiveRecord::Migration[6.0]
  def change
    create_table :limits do |t|
      t.string :limit

      t.timestamps
    end
  end
end
