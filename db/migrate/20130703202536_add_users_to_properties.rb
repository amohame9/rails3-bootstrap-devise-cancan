class AddUsersToProperties < ActiveRecord::Migration
  
self.up do
  change_table :properties do |t|
    t.references :user_id
  end
end


end
