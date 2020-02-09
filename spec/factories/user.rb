FactoryBot.define do
  factory :user do
    email { "something@valid.com" }
    password { "password" }
    name { "Jane Doe" }
  end
end
