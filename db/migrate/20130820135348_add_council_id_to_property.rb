class AddCouncilIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :council_id, :integer
  end
end
