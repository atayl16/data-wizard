require 'faker'

  2000.times do |i|
    p = Pet.new
      p.child_id = Faker::Number.unique.between(from: 1, to: 2010)
      p.client_id = p.child_id
      p.deleted = false
      p.pet_name = Faker::Creature::Dog.name
    p.save
  end

puts "2000 pets created"
