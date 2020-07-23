require 'faker'

appointments = []
  400.times do
    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 1
      a.employee_id = Faker::Number.between(from: 10, to: 19)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      #             a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 2
      a.employee_id = Faker::Number.between(from: 20, to: 29)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      #             a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 3
      a.employee_id = Faker::Number.between(from: 30, to: 39)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      #             a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a
  end

puts "Appointments created with addons"

require 'faker'

  1000.times do |i|
    service_amount = appointments[i].price
    sku_amount = Faker::Commerce.price
    tip_amount = (service_amount * 0.2).round(2)
    amount = (service_amount + sku_amount)
    created = appointments[i].start_time
    t = Ticket.new
      t.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
      t.location_id = appointments[i].location_id
      t.client_id = appointments[i].client_id
      t.status = "closed"
      t.employee_id = appointments[i].employee_id
      t.closed_by_employee_id = appointments[i].employee_id
      t.closed_at = (created + 1)
      t.created = created
      t.updated = (created + 1)
      t.deleted = false
      t.amount = amount
      t.payment_type = "cash"
      t.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
      t.inventory_sku_id = Faker::Number.between(from: 1, to: 101)
      t.skuamount = sku_amount
      t.sku_amount_before_discount = sku_amount
      t.quantity = 1
      t.service_id = appointments[i].service_id
      t.appointment_id = appointments[i].appointment_id
      t.serviceamount = service_amount
      t.service_amount_before_discount = service_amount
      t.tip_amount = tip_amount
    t.save
  end

puts "Tickets created"


addon_appointments = []
  500.times do
    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 6000, to: 9000)
      a.location_id = 1
      a.employee_id = Faker::Number.between(from: 10, to: 19)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      #             a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    addon_appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 6000, to: 9000)
      a.location_id = 2
      a.employee_id = Faker::Number.between(from: 20, to: 29)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      #             a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    addon_appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 6000, to: 9000)
      a.location_id = 3
      a.employee_id = Faker::Number.between(from: 30, to: 39)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today - 1, period: :night)
      #             a.duration = Faker::Number.between(from: 15, to: 90)
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
  a.change_time = addon_appointments[i].change_time
  a.save
end
