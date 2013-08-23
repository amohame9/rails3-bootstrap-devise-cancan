class AddPropertyIdToCouncils < ActiveRecord::Migration
  def change
    add_column :councils, :property_id, :integer
  end
end
