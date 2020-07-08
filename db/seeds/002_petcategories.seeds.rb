Petcategory.create!(category_id: 1, name: "Bath & Brush", online: true, deleted: false)
Petcategory.create!(category_id: 2, name: "Pet Grooming", online: true, deleted: false)
Petcategory.create!(category_id: 3, name: "Extras", online: true, deleted: false)
puts "3 pet categories created"

# require 'faker'
# 10.times do |saloncategory|
#   Petcategory.where(
#     category_id: Faker::Number.unique.between(from: 1, to: 10),
#     name: Faker::Lorem.word,
#     online: Faker::Boolean.boolean,
#     deleted: false
#   ).first_or_create
# end
# puts "10 categories created"
