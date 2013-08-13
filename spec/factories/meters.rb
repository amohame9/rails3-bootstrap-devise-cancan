# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meter do
    WaterMeter false
    WaterReading 1
    WaterDate "2013-08-13"
    EnergyMeter false
    EnergyReading 1
    EnergyDate "2013-08-13"
  end
end
