require 'faker'

Salonservice.create!(service_id: 1, category_id: 1, name: "Bang Trim", duration: 15, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 2, category_id: 1, name: "Haircut", duration: 30, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 3, category_id: 1, name: "Cut & Style", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 4, category_id: 2, name: "Highlights", duration: 60, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 5, category_id: 2, name: "Full Color", duration: 90, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 6, category_id: 2, name: "Balayage", duration: 120, is_add_on: false, is_custom: false, deleted: false)
Salonservice.create!(service_id: 7, category_id: 3, name: "Shampoo & Dry", duration: 15, is_add_on: false, is_custom: false, deleted: false)
puts "10 salon services created"
