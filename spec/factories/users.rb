
FactoryGirl.define do
  factory :user do
    name 'John Doe'
    sequence(:handle) { |x| "user#{x}" }
    avatar_url 'http://example.com/avatar.png'
  end
end