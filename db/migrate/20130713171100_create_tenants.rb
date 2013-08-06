class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :title
      t.string :firstname
      t.string :surname
      t.date :dateofbirth
      t.integer :telno
      t.string :contact_type
      t.string :email

      t.timestamps
    end
  end
end
