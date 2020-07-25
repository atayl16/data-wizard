require 'faker'

locations = 1..3

def create_staff(location_id)
  staff = 0..9
  staff.each do |staff|
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    location_id = location_id
    Staff.create!(
      employee_id: [ location_id, staff ].join('-'),
      name: (first_name + " " + last_name),
      title: Faker::Job.position,
      email: Faker::Internet.safe_email(name: first_name + "." + last_name),
      location_id: location_id,
      deleted: false
    )
  end
end

locations.each do |location_id|
    create_staff(location_id)
end

puts "Staff created"
