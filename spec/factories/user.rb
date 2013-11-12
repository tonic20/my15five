FactoryGirl.define do
  factory :user do
    email "user@test.com"
    password "qwerty"
    role "user"
  end
end