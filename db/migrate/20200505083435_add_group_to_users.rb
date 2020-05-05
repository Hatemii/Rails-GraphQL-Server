class AddGroupToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :group, null: true, foreign_key: true
  end
end
