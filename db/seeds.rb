puts "clearing records..."
Flat.destroy_all
puts "cleared records..."

puts "generating seeds..."

20.times do
  Flat.create!(
    name: Faker::Movies::StarWars.vehicle,
    address: Faker::Address.full_address,
    description: Faker::Movies::StarWars.wookiee_sentence,
    price_per_night: rand(10..500),
    number_of_guests: rand(1..10)
    )
end

puts "generated #{Flat.count} seeds!"
