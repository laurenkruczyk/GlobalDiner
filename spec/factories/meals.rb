
FactoryGirl.define do
  factory :meal do
    name "tasty pizza"
    url "www.meal.com"
    description "nice and cheesy"
    user
    country
  end
end

