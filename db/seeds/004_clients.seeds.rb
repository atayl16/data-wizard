require 'faker'

2000.times do |client|
  Client.create!(
    client_id: Faker::Number.unique.between(from: 1, to: 3000),
    client_first_name: Faker::Name.first_name ,
    client_last_name: Faker::Name.last_name ,
    email: Faker:: Internet.safe_email,
    home_phone: Faker::Number.between(from: 5550000000, to: 5559999999),
    work_phone: Faker::Number.between(from: 5550000000, to: 5559999999) ,
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
    preferred_location_id: Faker::Number.between(from: 0, to: 9) ,
    deleted: false,
    associated_location_ids: Faker::Number.between(from: 0, to: 9)
  )
end
puts "2000 clients created"
