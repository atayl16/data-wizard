require 'faker'

@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
puts "1 User created"
Faker::UniqueGenerator.clear # Clears used values for all generators
