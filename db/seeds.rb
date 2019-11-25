# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demo_user = User.create!(name: Faker::Name.name, email: "demo@example.com", password: "password", password_confirmation: "password")

10.times do
  recipe = Recipe.create!({
    name: Faker::Food.dish,
    description: Faker::Food.description,
    instructions: "",
    time_to_prepare: "#{rand(15..120)} minutes",
    feeds: "4-6",
    user: demo_user})

  5.times do
    Ingredient.create!({
      recipe: recipe,
      quantity: Faker::Food.measurement,
      name: Faker::Food.ingredient
    })
  end
end