FactoryBot.define do
  factory :recipe do
    user
    name { "Recipe Name" }
    instructions { "Cook it" }
  end
end
