class PropertyStatus < ActiveRecord::Migration


  def up
  	add_column :properties, :status, :string
  end

  def down
  	remove_column :property, :status
  end
end
