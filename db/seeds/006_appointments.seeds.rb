require 'faker'


2000.times do |appointment|
  Appointment.create!(
    appointment_id: Faker::Number.unique.between(from: 1, to: 2000),
    location_id: Faker::Number.number(digits: 1),
    employee_id: Faker::Number.between(from: 0, to: 100),
    client_id: Faker::Number.between(from: 1, to: 3000),
    child_id: Faker::Number.between(from: 3001, to: 6000),
    notes: Faker::Lorem.paragraph(sentence_count: 0, supplemental: true, random_sentences_to_add: 4),
    service_id: Faker::Number.between(from: 1, to: 7),
    price: Faker::Commerce.price,
    status: 'booked' ,
    start_time: Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 30, period: :night),
    duration: Faker::Number.between(from: 15, to: 90),
    change_time: Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night),
)
end

puts "2000 appointments created"
#appointment_id location_id employee_id client_id child_id notes start_time end_time service_id price duration status change_time employee_id
