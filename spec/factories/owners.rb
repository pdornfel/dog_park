# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name 'Paul'
    last_name 'Dornfeld'
    email 'pdornfel@gmail.com'
  end
end
