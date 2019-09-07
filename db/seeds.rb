# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

name = ['Trip 1', 'Trip 2', 'Trip 3']
date = Faker::Date.between(from: 1.year.ago, to: 1.year.from_now)

3.times do
  trip = Trip.create(
    name: name.sample,
    start_date: date,
    end_date: date + 5
  )
    5.times do
      city = Faker::Address.city
      location = Location.create(
       name: city,
        days: 5,
        trip_id: trip.id

      )

    5.times do
      address = Address.create(
        street: Faker::Address.street_address,
        city: city,
        state: Faker::Address.state,
        zip: Faker::Address.zip_code,
        location_id: location.id

      )

    end
  end
end

puts 'Date seeded'