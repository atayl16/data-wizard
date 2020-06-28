# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
puts "1 User created"

# Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
# puts "Processing #{file.split('/').last}"
# require file
10.times do |location|
  Location.create!(
    location_id: Faker::Number.unique.number(digits: 1),
    nickname: Faker::App.unique.name ,
    country: 'US' ,
    street_address: Faker::Address.street_address ,
    street_address_2: Faker::Address.secondary_address ,
    city: Faker::Address.city ,
    state: Faker::Address.state_abbr ,
    zip: Faker::Address.zip ,
    phone_number: Faker::PhoneNumber.cell_phone ,
    deleted: false
  )
end

Salonservice.create!(service_id: 1, category_id: 1, name: "Bang Trim", duration: 15, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 2, category_id: 1, name: "Haircut", duration: 30, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 3, category_id: 1, name: "Cut & Style", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 4, category_id: 2, name: "Highlights", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 5, category_id: 2, name: "Full Color", duration: 90, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 6, category_id: 2, name: "Balayage", duration: 120, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 7, category_id: 3, name: "Shampoo & Dry", duration: 15, is_add_on: true, is_custom: false, deleted: false)

5000.times do |client|
  Client.create!(
    client_id: Faker::Number.unique.number(digits: 5) ,
    client_first_name: Faker::Name.first_name ,
    client_last_name: Faker::Name.last_name ,
    email: Faker:: Internet.safe_email,
    home_phone: Faker::PhoneNumber.cell_phone ,
    work_phone: Faker::PhoneNumber.cell_phone ,
    street_address: Faker::Address.street_address ,
    street_address_2: Faker::Address.secondary_address ,
    city: Faker::Address.city ,
    state: Faker::Address.state_abbr ,
    zip: Faker::Address.zip ,
    country: 'US' ,
    gender: Faker::Gender.short_binary_type ,
    date_of_birth: Faker::Date.between(from: '1950-09-23', to: '2005-09-25') ,
    client_since: Faker::Date.between(from: 900.days.ago, to: Date.today) ,
    can_receive_automated_emails: Faker::Boolean.boolean ,
    can_receive_manual_emails: Faker::Boolean.boolean ,
    can_receive_automated_sms: Faker::Boolean.boolean ,
    can_receive_manual_sms: Faker::Boolean.boolean ,
    notes: Faker::Lorem.paragraph(sentence_count: 0, supplemental: false, random_sentences_to_add: 4) ,
#    preferred_employee_id: Faker::Number.between(from: 1, to: 50) ,
#    preferred_location_id: Faker::Number.between(from: 0, to: 9) ,
    deleted: false
  )

end
