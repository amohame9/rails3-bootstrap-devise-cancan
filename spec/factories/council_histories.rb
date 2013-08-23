# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :council_history do
    property_id 1
    council_id 1
    vacant false
  end
end
