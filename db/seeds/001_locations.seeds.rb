require 'faker'

  Location.create!(
    # location_id: Faker::Number.unique.clear,
    location_id: 1,
    nickname: Faker::App.unique.name ,
    country: 'US' ,
    street_address: Faker::Address.street_address ,
    city: "Nome" ,
    state: "AK" ,
    zip: "99762" ,
    phone_number: Faker::Number.between(from: 5550000000, to: 5559999999) ,
    deleted: false
  )
  Location.create!(
    # location_id: Faker::Number.unique.clear,
    location_id: 2,
    nickname: Faker::App.unique.name ,
    country: 'US' ,
    street_address: Faker::Address.street_address ,
    city: "Nome" ,
    state: "AK" ,
    zip: "99762" ,
    phone_number: Faker::Number.between(from: 5550000000, to: 5559999999) ,
    deleted: false
  )
  Location.create!(
    # location_id: Faker::Number.unique.clear,
    location_id: 3,
    nickname: Faker::App.unique.name ,
    country: 'US' ,
    street_address: Faker::Address.street_address ,
    city: "Nome" ,
    state: "AK" ,
    zip: "99762" ,
    phone_number: Faker::Number.between(from: 5550000000, to: 5559999999) ,
    deleted: false
  )

puts "3 locations created"
