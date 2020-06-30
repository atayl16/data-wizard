require 'faker'

50.times do |staff|
  Staff.where(
    employee_id: Faker::Number.unique.between(from: 1, to: 50),
    name: Faker::Name.name,
    title: Faker::Job.position,
    email: Faker::Internet.safe_email,
    location_id: Faker::Number.between(from: 0, to: 9),
    deleted: false
  ).first_or_create
end
puts "50 staff created"
