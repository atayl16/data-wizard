require 'faker'


10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 11, to: 20),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "1",
    deleted: false
  )
end
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 21, to: 30),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "2",
    deleted: false
  )
end
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 31, to: 40),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "3",
    deleted: false
  )
end

puts "30 staff created"
