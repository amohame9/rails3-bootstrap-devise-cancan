class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
      t.boolean :WaterMeter
      t.integer :WaterReading
      t.date :WaterDate
      t.boolean :EnergyMeter
      t.integer :EnergyReading
      t.date :EnergyDate

      t.timestamps
    end
  end
end
