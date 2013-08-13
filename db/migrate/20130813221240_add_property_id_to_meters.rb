class AddPropertyIdToMeters < ActiveRecord::Migration
  def change
    add_column :meters, :property_id, :integer
  end
end
