require 'faker'

appointments = []
  2000.times do
    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 2010)
      a.location_id = Faker::Number.number(digits: 1)
      a.employee_id = Faker::Number.between(from: 0, to: 100)
      a.client_id = Faker::Number.between(from: 1, to: 3000)
      a.child_id = Faker::Number.between(from: 3001, to: 6000)
      a.notes = Faker::Lorem.paragraph(sentence_count: 0, supplemental: true, random_sentences_to_add: 4)
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 30, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
    a.save
    appointments << a
  end

  200.times do |i|
    a = Appointment.new
      a.appointment_id = appointments[i].appointment_id
      a.location_id = appointments[i].location_id
      a.employee_id = appointments[i].employee_id
      a.client_id = appointments[i].client_id
      a.child_id = appointments[i].child_id
      a.notes = Faker::Lorem.paragraph(sentence_count: 0, supplemental: true, random_sentences_to_add: 4)
      a.service_id = 7
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = appointments[i].start_time
      a.duration = Faker::Number.between(from: 10, to: 20)
      a.change_time = appointments[i].change_time
    a.save
  end

puts "2000 appointments created with 200 addons"
