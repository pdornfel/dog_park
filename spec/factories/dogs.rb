FactoryGirl.define do
  factory :dog do

    sequence(:name) { |n| "Kayl#{n}" }

  end
end