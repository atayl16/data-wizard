require 'faker'

locations = 1..3

def create_appointments(location_id)
  appointment = 1..400
  appointment.each do
    service = Salonservice.where(is_add_on: FALSE).sample(1).first
    price = Salonpricing.find_by(service_id: service.service_id)
    staff = [location_id, Faker::Number.between(from: 0, to: 9)].join('-')
    a = Appointment.new
    a.appointment_id = [location_id, Faker::Number.unique.between(from: 100_000, to: 900_000)].join('-')
    a.ticket_id = a.appointment_id
    a.location_id = location_id
    a.employee_id = staff
    a.client_id = Faker::Number.between(from: 1, to: 2010)
    a.child_id = a.client_id
    a.notes = Faker::Lorem.paragraph(sentence_count: 0, random_sentences_to_add: 2)
    a.service_id = service.service_id
    a.price = price.price
    a.status = 'booked'
    a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
    a.duration = service.duration
    a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
    a.has_specific_employee = Faker::Boolean.boolean
    a.ticket_status = 'closed'
    a.payment_item_id = Faker::Number.unique.between(from: 100_000, to: 900_000)
    a.ticket_type = 'cash'
    a.inventory_sku_id = Faker::Number.between(from: 1, to: 101)
    a.sku_amount = Faker::Commerce.price(range: 0..10.0, as_string: true)
    a.quantity = 1
    a.tip = (price.price * 0.2).round(2)
    a.amount = (a.price.to_f + a.sku_amount.to_f + a.tip.to_f).round(2)
    a.save
  end
  add_appointment = 500..550
  add_appointment.each do
    service = Salonservice.where(is_add_on: FALSE).sample(1).first
    price = Salonpricing.find_by(service_id: service.service_id)
    staff = [location_id, Faker::Number.between(from: 0, to: 9)].join('-')
    a = Appointment.new
    a.appointment_id = [location_id, Faker::Number.unique.between(from: 900_000, to: 990_000)].join('-')
    a.ticket_id = a.appointment_id
    a.location_id = location_id
    a.employee_id = staff
    a.client_id = Faker::Number.between(from: 1, to: 2010)
    a.child_id = a.client_id
    a.notes = Faker::Lorem.paragraph(sentence_count: 0, random_sentences_to_add: 2)
    a.service_id = service.service_id
    a.price = price.price
    a.status = 'booked'
    a.start_time = Faker::Time.between_dates(from: Date.today - 5, to: Date.today + 10, period: :night)
    a.duration = service.duration
    a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
    a.has_specific_employee = Faker::Boolean.boolean
    a.save
    b = Appointment.new
    b.appointment_id = a.appointment_id
    b.ticket_id = a.appointment_id
    b.location_id = a.location_id
    b.employee_id = a.employee_id
    b.client_id = a.client_id
    b.child_id = a.client_id
    b.service_id = 7
    b.price = 15
    b.status = 'booked'
    b.start_time = a.start_time
    b.duration = 15
    b.change_time = a.change_time
    b.ticket_status = 'closed'
    b.payment_item_id = Faker::Number.unique.between(from: 100_000, to: 900_000)
    b.ticket_type = 'cash'
    b.inventory_sku_id = Faker::Number.between(from: 1, to: 101)
    b.sku_amount = Faker::Commerce.price(range: 6..20.99)
    b.quantity = 1
    b.tip = (b.price * 0.2).round(2)
    b.amount = (a.price.to_f + a.sku_amount.to_f + a.tip.to_f + b.price.to_f + b.sku_amount.to_f + b.tip.to_f).round(2)
    b.save
  end
end

locations.each do |location_id|
  create_appointments(location_id)
end

puts 'Appointments created with addons'
puts 'Tickets created'
