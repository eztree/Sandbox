puts "Seeding the trips now 🌱"

10.times do |index|
  puts "Creating trip #{index + 1}"
  start_date = Faker::Date.between(from: '2021-12-05', to: '2022-03-31')
  address = Faker::Address.street_address #This sometimes doesn't work cuz address is fake
  results = Geocoder.search(address)
  Trip.create!(
    name: address,
    start: start_date,
    end: start_date + rand(1..5),
    no_of_people: rand(1..5),
    latitude: results.first.coordinates[0],
    longitude: results.first.coordinates[1],
    location: results.first.neighbourhood,
    address: address
  )
  puts "Done!"
end

puts "End of trip seeds! 💯"
