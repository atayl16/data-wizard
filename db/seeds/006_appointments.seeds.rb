require 'faker'

appointments = []
  200.times do
    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 0
      a.employee_id = Faker::Number.between(from: 0, to: 9)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

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
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
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
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
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
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 4
      a.employee_id = Faker::Number.between(from: 40, to: 49)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 5
      a.employee_id = Faker::Number.between(from: 50, to: 59)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 6
      a.employee_id = Faker::Number.between(from: 60, to: 69)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

    a = Appointment.new
      a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
      a.location_id = 7
      a.employee_id = Faker::Number.between(from: 70, to: 79)
      a.client_id = Faker::Number.between(from: 1, to: 2010)
      a.child_id = a.client_id
      a.notes = Faker::Movie.quote
      a.service_id = Faker::Number.between(from: 1, to: 6)
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
      a.duration = Faker::Number.between(from: 15, to: 90)
      a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
      a.has_specific_employee = Faker::Boolean.boolean
    a.save
    appointments << a

  a = Appointment.new
    a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
    a.location_id = 8
    a.employee_id = Faker::Number.between(from: 80, to: 89)
    a.client_id = Faker::Number.between(from: 1, to: 2010)
    a.child_id = a.client_id
    a.notes = Faker::Movie.quote
    a.service_id = Faker::Number.between(from: 1, to: 6)
    a.price = Faker::Commerce.price
    a.status = 'booked'
    a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
    a.duration = Faker::Number.between(from: 15, to: 90)
    a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
    a.has_specific_employee = Faker::Boolean.boolean
  a.save
  appointments << a

  a = Appointment.new
    a.appointment_id = Faker::Number.unique.between(from: 1, to: 5000)
    a.location_id = 9
    a.employee_id = Faker::Number.between(from: 90, to: 99)
    a.client_id = Faker::Number.between(from: 1, to: 2010)
    a.child_id = a.client_id
    a.notes = Faker::Movie.quote
    a.service_id = Faker::Number.between(from: 1, to: 6)
    a.price = Faker::Commerce.price
    a.status = 'booked'
    a.start_time = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
    a.duration = Faker::Number.between(from: 15, to: 90)
    a.change_time = Faker::Time.between_dates(from: Date.today - 60, to: Date.today - 30, period: :night)
    a.has_specific_employee = Faker::Boolean.boolean
  a.save
  appointments << a
end

  200.times do |i|
    a = Appointment.new
      a.appointment_id = appointments[i].appointment_id
      a.location_id = appointments[i].location_id
      a.employee_id = appointments[i].employee_id
      a.client_id = appointments[i].client_id
      a.child_id = appointments[i].client_id
      a.notes = Faker::Movie.quote
      a.service_id = 7
      a.price = Faker::Commerce.price
      a.status = 'booked'
      a.start_time = appointments[i].start_time
      a.duration = Faker::Number.between(from: 10, to: 20)
      a.change_time = appointments[i].change_time
    a.save
  end

puts "2000 appointments created with 200 addons"
