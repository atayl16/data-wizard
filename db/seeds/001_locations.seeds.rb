require 'faker'

10.times do |location|
  Location.create!(
    # location_id: Faker::Number.unique.clear,
    location_id: Faker::Number.unique.number(digits: 1),
    nickname: Faker::App.unique.name ,
    country: 'US' ,
    street_address: Faker::Address.street_address ,
    city: "Nome" ,
    state: "AK" ,
    zip: "99762" ,
    phone_number: Faker::Number.between(from: 5550000000, to: 5559999999) ,
    deleted: false
  )
end
puts "10 locations created"
