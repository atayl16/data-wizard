require 'faker'

locations = [1,2,3]

def create_location(location_id)
  Location.create!(
    location_id: location_id,
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

locations.each do |location_id|
  create_location(location_id)
end
