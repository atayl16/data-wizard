Petservice.create!(service_id: 1, category_id: 1, name: "Bath Only", duration: 15, is_add_on: false, is_custom: false, deleted: false)
Petservice.create!(service_id: 2, category_id: 1, name: "Bath & Brush", duration: 30, is_add_on: false, is_custom: false, deleted: false)
Petservice.create!(service_id: 3, category_id: 1, name: "Bath, Brush & Style", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Petservice.create!(service_id: 4, category_id: 2, name: "Mini Groom", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Petservice.create!(service_id: 5, category_id: 2, name: "Full Groom", duration: 90, is_add_on: false, is_custom: false, deleted: false)
Petservice.create!(service_id: 6, category_id: 2, name: "Elite Groom", duration: 120, is_add_on: false, is_custom: false, deleted: false)
Petservice.create!(service_id: 7, category_id: 3, name: "Nail Trim", duration: 15, is_add_on: false, is_custom: false, deleted: false)
puts "7 pet services created"

# require 'faker'
#
# 100.times do |salonservice|
#   Petservice.where(
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
