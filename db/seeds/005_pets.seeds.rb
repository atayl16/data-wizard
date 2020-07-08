require 'faker'

3000.times do |pet|
  Pet.create!(
    child_id: Faker::Number.unique.between(from: 3001, to: 6002),
    client_id: Faker::Number.between(from: 1, to: 3000),
    deleted: false,
    pet_name: Faker::Creature::Dog.name
  )
end
puts "3000 pets created"
