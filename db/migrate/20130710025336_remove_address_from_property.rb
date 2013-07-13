class RemoveAddressFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :address, :string
  end
end
