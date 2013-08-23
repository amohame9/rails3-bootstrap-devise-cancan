class RenameCouncilNameColumnToName < ActiveRecord::Migration
  def up
  	rename_column :councils, :CouncilName, :name
  end

  def down
  	rename_column :councils, :name, :CouncilName
  end
end
