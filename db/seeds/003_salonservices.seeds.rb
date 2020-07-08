Salonservice.create!(service_id: 1, category_id: 1, name: "Bang Trim", duration: 15, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 2, category_id: 1, name: "Haircut", duration: 30, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 3, category_id: 1, name: "Cut & Style", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 4, category_id: 2, name: "Highlights", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 5, category_id: 2, name: "Full Color", duration: 90, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 6, category_id: 2, name: "Balayage", duration: 120, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 7, category_id: 3, name: "Shampoo & Dry", duration: 15, is_add_on: true, is_custom: false, deleted: false)
puts "7 salon services created"

# require 'faker'
#
# 100.times do |salonservice|
#   Salonservice.where(
#     service_id: Faker::Number.unique.between(from: 1, to: 100),
#     category_id: Faker::Number.between(from: 1, to: 10),
#     name: Faker::Lorem.word,
#     duration: Faker::Number.between(from: 15, to: 90),
#     is_add_on: false
#     is_custom: false
#     deleted: false
#   ).first_or_create
# end
# puts "100 services created"
