class FixColumnName < ActiveRecord::Migration
 def change
    rename_column :councils, :CouncilEmail, :email
  end
end
