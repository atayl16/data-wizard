require 'faker'

2000.times do |_i|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  c = Client.new
  c.client_id = Faker::Number.unique.between(from: 1, to: 2010)
  c.client_first_name = Faker::Name.first_name
  c.client_last_name = Faker::Name.last_name
  c.email = Faker::Internet.safe_email(name: first_name + '.' + last_name)
  c.home_phone = Faker::Number.between(from: 5_550_000_000, to: 5_559_999_999)
  c.work_phone = Faker::Number.between(from: 5_550_000_000, to: 5_559_999_999)
  c.street_address = Faker::Address.street_address
  c.street_address_2 = Faker::Address.secondary_address
  c.city = Faker::Address.city
  c.state = Faker::Address.state_abbr
  c.zip = Faker::Address.zip
  c.country = 'US'
  c.gender = Faker::Gender.short_binary_type
  c.date_of_birth = Faker::Date.between(from: '1950-09-23', to: '2005-09-25')
  c.client_since = Faker::Date.between(from: 900.days.ago, to: Date.today)
  c.can_receive_automated_emails = Faker::Boolean.boolean
  c.can_receive_manual_emails = Faker::Boolean.boolean
  c.can_receive_automated_sms = Faker::Boolean.boolean
  c.can_receive_manual_sms = Faker::Boolean.boolean
  c.notes = Faker::Lorem.paragraph(sentence_count: 0, random_sentences_to_add: 4)
  c.preferred_location_id = Faker::Number.between(from: 1, to: 3)
  c.deleted = false
  c.associated_location_ids = Faker::Number.between(from: 1, to: 3)
  c.pet_name = Faker::Creature::Dog.name
  c.child_id = c.client_id
  c.save
end
puts '2000 clients and pets created'
