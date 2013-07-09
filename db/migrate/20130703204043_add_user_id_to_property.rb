class AddUserIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :user_id, :integer
  end
  add_index :properties, [:user_id, :created_at]
end
