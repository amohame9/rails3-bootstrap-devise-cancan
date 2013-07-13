# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    street1 "MyString"
    street2 "MyString"
    city "MyString"
    county "MyString"
    postcode "MyString"
    addressable_id 1
    addressable_type "MyString"
  end
end
