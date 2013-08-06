# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tenant do
    title "MyString"
    firstname "MyString"
    surname "MyString"
    dateofbirth "2013-07-13"
    telno 1
    contact_type "MyString"
    email "MyString"
  end
end
