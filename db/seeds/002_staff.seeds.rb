require 'faker'


11.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 0, to: 10),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "0",
    deleted: false
  )
end
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
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 41, to: 50),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "4",
    deleted: false
  )
end
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 51, to: 60),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "5",
    deleted: false
  )
end
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 61, to: 70),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "6",
    deleted: false
  )
end
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 71, to: 80),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "7",
    deleted: false
  )
end
10.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 81, to: 90),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "8",
    deleted: false
  )
end
9.times do |staff|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Staff.create!(
    employee_id: Faker::Number.unique.between(from: 91, to: 99),
    name: (first_name + " " + last_name),
    title: Faker::Job.position,
    email: Faker::Internet.safe_email(name: first_name + "." + last_name),
    location_id: "9",
    deleted: false
  )
end

puts "100 staff created"
