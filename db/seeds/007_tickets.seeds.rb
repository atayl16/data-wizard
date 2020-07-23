# require 'faker'
#
#   300.times do |i|
#     service_amount = Faker::Commerce.price
#     sku_amount = Faker::Commerce.price
#     tip_amount = (service_amount * 0.2).round(2)
#     amount = (service_amount + tip_amount + sku_amount)
#     created = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
#     t = Ticket.new
#       t.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
#       t.location_id = 1
#       t.client_id = Faker::Number.between(from: 1, to: 2010)
#       t.status = "closed"
#       t.employee_id = Faker::Number.between(from: 11, to: 20)
#       t.closed_by_employee_id = Faker::Number.between(from: 11, to: 20)
#       t.closed_at = (created + 1)
#       t.created = created
#       t.updated = (created + 1)
#       t.deleted = false
#       t.amount = amount
#       t.payment_type = "cash"
#       t.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
#       t.inventory_sku_id = Faker::Number.between(from: 1, to: 101)
#       t.skuamount = sku_amount
#       t.sku_amount_before_discount = sku_amount
#       t.quantity = 1
#       t.service_id = Faker::Number.between(from: 1, to: 6)
#       t.appointment_id = Faker::Number.between(from: 6000, to: 7000)
#       t.serviceamount = service_amount
#       t.service_amount_before_discount = service_amount
#       t.tip_amount = tip_amount
#     t.save
#   end
#   300.times do |i|
#     service_amount = Faker::Commerce.price
#     # sku_amount = Faker::Commerce.price
#     tip_amount = (service_amount * 0.2).round(2)
#     amount = (service_amount + tip_amount)
#     created = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
#     t = Ticket.new
#       t.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
#       t.location_id = 2
#       t.client_id = Faker::Number.between(from: 1, to: 2010)
#       t.status = "closed"
#       t.employee_id = Faker::Number.between(from: 21, to: 30)
#       t.closed_by_employee_id = Faker::Number.between(from: 11, to: 20)
#       t.closed_at = (created + 1)
#       t.created = created
#       t.updated = (created + 1)
#       t.deleted = false
#       t.amount = amount
#       t.payment_type = "cash"
#       t.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
#       # t.inventory_sku_id = Faker::Number.between(from: 1, to: 101)
#       # t.skuamount = sku_amount
#       # t.sku_amount_before_discount = sku_amount
#       t.quantity = 1
#       t.service_id = Faker::Number.between(from: 1, to: 6)
#       t.appointment_id = Faker::Number.between(from: 6000, to: 7000)
#       t.serviceamount = service_amount
#       t.service_amount_before_discount = service_amount
#       t.tip_amount = tip_amount
#     t.save
#   end
#   300.times do |i|
#     service_amount = Faker::Commerce.price
#     # sku_amount = Faker::Commerce.price
#     tip_amount = (service_amount * 0.2).round(2)
#     amount = (service_amount + tip_amount)
#     created = Faker::Time.between_dates(from: Date.today - 30, to: Date.today + 10, period: :night)
#     t = Ticket.new
#       t.ticket_id = Faker::Number.unique.between(from: 100000, to: 900000)
#       t.location_id = 3
#       t.client_id = Faker::Number.between(from: 1, to: 2010)
#       t.status = "closed"
#       t.employee_id = Faker::Number.between(from: 31, to: 40)
#       t.closed_by_employee_id = Faker::Number.between(from: 11, to: 20)
#       t.closed_at = (created + 1)
#       t.created = created
#       t.updated = (created + 1)
#       t.deleted = false
#       t.amount = amount
#       t.payment_type = "cash"
#       t.payment_item_id = Faker::Number.unique.between(from: 100000, to: 900000)
#       # t.inventory_sku_id = Faker::Number.between(from: 1, to: 101)
#       # t.skuamount = sku_amount
#       # t.sku_amount_before_discount = sku_amount
#       t.quantity = 1
#       t.service_id = Faker::Number.between(from: 1, to: 6)
#       t.appointment_id = Faker::Number.between(from: 6000, to: 7000)
#       t.serviceamount = service_amount
#       t.service_amount_before_discount = service_amount
#       t.tip_amount = tip_amount
#     t.save
#   end
# puts "1000 tickets created"
