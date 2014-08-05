
FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "123foo#{n}@gmail.com" }
    first_name "heythere"
    last_name "howareyou"
    password "coolseeya123"
  end



  factory :admin do
    admin true 
  end
end

