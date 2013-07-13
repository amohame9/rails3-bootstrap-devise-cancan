class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :county
      t.string :postcode
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end


    add_index :addresses, [:addressable_type, :addressable_id], :unique => true

  end
end
