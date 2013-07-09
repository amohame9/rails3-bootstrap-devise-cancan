# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    name "My Home"
    address "6 Wellfield Close"
    user
  end
end
