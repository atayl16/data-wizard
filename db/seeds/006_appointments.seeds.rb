require 'faker'

appointments = []
  400.times do
    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 1
      a.employee_id = Faker::Number.between(from: 11, to: 20)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
      a.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_status = 'closed'
      a.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_type =  "cash"
      a.inventory_sku_id =  Faker::Number.between(from: 1, to: 101)
      a.sku_amount = Faker::Commerce.price
      a.quantity =  1
      a.amount = (a.price + a.sku_amount)
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 2
      a.employee_id = Faker::Number.between(from: 21, to: 30)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
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
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 3
      a.employee_id = Faker::Number.between(from: 31, to: 40)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
      a.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_status = 'closed'
      a.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
      a.ticket_type =  "cash"
      a.inventory_sku_id =  Faker::Number.between(from: 1, to: 101)
      a.sku_amount = Faker::Commerce.price
      a.quantity =  1
      a.amount = (a.price + a.sku_amount)
    a.save
    appointments << a
  end

puts "Appointments created with addons"
puts "Tickets created"


addon_appointments = []
  50.times do
    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 6000, to: 9000)
      a.location_id = 1
      a.employee_id = Faker::Number.between(from: 11, to: 20)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 5, to: Date.today +10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    addon_appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 6000, to: 9000)
      a.location_id = 2
      a.employee_id = Faker::Number.between(from: 21, to: 30)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 5, to: Date.today +10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    addon_appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 6000, to: 9000)
      a.location_id = 3
      a.employee_id = Faker::Number.between(from: 31, to: 40)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 5, to: Date.today +10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    addon_appointments << a
end

100.times do |i|
  a = Appointment.new
  a.appointment_id = addon_appointments[i].appointment_id
  a.location_id = addon_appointments[i].location_id
  a.employee_id = addon_appointments[i].employee_id
  a.client_id = addon_appointments[i].client_id
  a.child_id = addon_appointments[i].client_id
  a.notes = Faker::Movie.quote
  a.service_id = 7
  a.price = Faker::Commerce.price
  a.status = 'booked'
  a.start_time = addon_appointments[i].start_time
  a.duration = Faker::Number.between(from: 10, to: 15)
  a.change_time = addon_appointments[i].change_time
  a.save
end
