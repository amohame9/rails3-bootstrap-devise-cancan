class CreateCouncils < ActiveRecord::Migration
  def change
    create_table :councils do |t|
      t.string :CouncilName
      t.integer :CouncilTel
      t.string :CouncilEmail

      t.timestamps
    end
  end
end
