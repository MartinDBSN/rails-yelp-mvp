Restaurant.destroy_all
puts "Database cleaned"

5.times {
  @restaurant = Restaurant.new(name: Faker::Movie.title, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: "chinese")
  @restaurant.save
}
