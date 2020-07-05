require 'faker'

3000.times do |pet|
  Pet.where(
    child_id: Faker::Number.unique.between(from: 3001, to: 6000),
    client_id: Faker::Number.between(from: 1, to: 3000),
    deleted: false,
    pet_name: Faker::Creature::Dog.name
  ).first_or_create
end
puts "3000 pets created"
