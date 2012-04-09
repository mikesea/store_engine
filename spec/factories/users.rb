FactoryGirl.define do
  factory :user do
    name     "John Doe"
    email    "john@example.com"
    display_name "john_doe"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :user_short_password do
    name     "John Doe"
    email    "john@example.com"
    display_name "john_doe"
    password "foo"
    password_confirmation "foo"
  end
end