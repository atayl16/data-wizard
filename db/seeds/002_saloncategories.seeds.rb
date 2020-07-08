Saloncategory.create!(category_id: 1, name: "Haircuts", online: true, deleted: false)
Saloncategory.create!(category_id: 2, name: "Color", online: true, deleted: false)
Saloncategory.create!(category_id: 3, name: "Style", online: true, deleted: false)
puts "3 salon categories created"

# require 'faker'
# 10.times do |saloncategory|
#   Saloncategory.where(
#     category_id: Faker::Number.unique.between(from: 1, to: 10),
#     name: Faker::Lorem.word,
#     online: Faker::Boolean.boolean,
#     deleted: false
#   ).first_or_create
# end
# puts "10 categories created"
