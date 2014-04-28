
FactoryGirl.define do
  factory :meal do
    sequence(:name) {|n| "tasty#{n} pizza"}
    url "www.meal.com"
    description "nice and cheesy"
    user
    country
  end
end

