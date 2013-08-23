class CreateCouncilHistories < ActiveRecord::Migration
  def change
    create_table :council_histories do |t|
      t.references :property
      t.references :council
      t.boolean :vacant

      t.timestamps
    end
  end
end
