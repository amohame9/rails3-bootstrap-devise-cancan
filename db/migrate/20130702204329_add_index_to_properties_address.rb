class AddIndexToPropertiesAddress < ActiveRecord::Migration
  
  def change
  	add_index :properties, :address, unique: true
  end
end
