require 'faker'

locations = 1..3

def create_appointments(location_id)
  appointment = 1..400
  staff = [location_id, Faker::Number.between(from: 0, to: 9)].join('-')
  appointment.each do
    a = Appointment.new
      a.appointment_id = [ location_id, Faker::Number.unique.between(from: 100000, to: 900000) ].join('-')
      a.location_id = location_id
      a.employee_id = staff
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Lorem.paragraph(sentence_count: 0, random_sentences_to_add: 2)
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
      a.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_status = 'closed'
      a.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_type =  "cash"
      a.inventory_sku_id =  Faker::Number.between(from: 1, to: 101)
      a.sku_amount = Faker::Commerce.price
      a.quantity =  1
      a.amount = (a.price + a.sku_amount)
    a.save
  end
    add_appointment = 500..550
    add_appointment.each do
    staff = [location_id, Faker::Number.between(from: 0, to: 9)].join('-')
      a = Appointment.new
      a.appointment_id = [ location_id, Faker::Number.unique.between(from: 900000, to: 990000) ].join('-')
      a.location_id = location_id
      a.employee_id = staff
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Lorem.paragraph(sentence_count: 0, random_sentences_to_add: 2)
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 5, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
      b = Appointment.new
      b.appointment_id = a.appointment_id
      b.location_id = a.location_id
      b.employee_id = a.employee_id
      b.client_id = a.client_id
      b.child_id = a.client_id
      b.service_id = 7
      b.price = Faker::Commerce.price
      b.status = 'booked'
      b.start_time = a.start_time
      b.duration = Faker::Number.between(from: 10, to: 15)
      b.change_time = a.change_time
    b.save
  end
end



locations.each do |location_id|
  create_appointments(location_id)
end

puts "Appointments created with addons"
puts "Tickets created"
