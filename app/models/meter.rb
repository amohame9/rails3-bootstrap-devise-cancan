class Meter < ActiveRecord::Base
  attr_accessible :EnergyDate, :EnergyMeter, :EnergyReading, :WaterDate, :WaterMeter, :WaterReading

  belongs_to :property
end
