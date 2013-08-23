# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :council do
    CouncilName "MyString"
    CouncilTel 1
    CouncilEmail "MyString"
  end
end
