class AddLimitExceptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :limit_exception, :string
  end
end
