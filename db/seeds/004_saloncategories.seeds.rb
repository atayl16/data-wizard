require 'faker'

Saloncategory.create!(category_id: 1, name: "Haircuts", online: true, deleted: false)
Saloncategory.create!(category_id: 2, name: "Color", online: true, deleted: false)
Saloncategory.create!(category_id: 3, name: "Style", online: true, deleted: false)
puts "3 salon categories created"
