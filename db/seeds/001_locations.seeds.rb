# require 'faker'
#
# 10.times do |location|
#   Location.create!(
#     nickname: Faker::App.name ,
#     country: 'US' ,
#     street_address: Faker::Address.street_address ,
#     street_address_2: Faker::Address.secondary_address ,
#     city: Faker::Address.city ,
#     state: Faker::Address.state_abbr ,
#     zip: Faker::Address.zip(enums) { |row|  } ,
#     phone_number: Faker::PhoneNumber.cell_phone ,
#     deleted: false
#   )
# end
