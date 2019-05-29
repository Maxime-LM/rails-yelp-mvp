# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

20.times do
  restaurants = Restaurant.create({
    name: Faker::Company.bs,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.leading_zero_number(10),
    category: Faker::Address.country,
  })
  5.times do
    reviews = Review.create({
      content: Faker::Lorem.paragraph,
      rating: rand(0..5),
      restaurant_id: restaurants.id,
   })
  end
end


