require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying the buddies..."
Buddy.destroy_all
puts "Buddies destroyed ! 😭"

puts "..."

puts "Destroying the user..."
Buddy.destroy_all
puts "Users destroyed ! 😭"

puts "..."

puts "Destroying the bookings..."
Buddy.destroy_all
puts "Bookings destroyed ! 😭"

puts "..."

puts "Creating 20 super true buddies..."
20.times do
  buddy = Buddy.new(name: Faker::Name.first_name,
                    age: rand(18..99),
                    gender: Faker::Gender.type,
                    city: Faker::Address.city,
                    biography: Faker::Lorem.sentence(word_count: 50),
                    hobby: [Faker::Hobby.activity, Faker::Hobby.activity],
                    language: ['German', 'French', 'English', 'Chinese', 'Hungarian', 'Greek', 'Russian', 'Angolan',
                               'Ethiopian', 'Arabic'].sample(2))
  buddy.save!
end
puts "Buddies created 👯"

puts "..."

puts "Creating 5 super true users..."
User.new(email: 'user1@exemple.com', encrypted_password: 'user1')
User.new(email: 'user2@exemple.com', encrypted_password: 'user2')
User.new(email: 'user3@exemple.com', encrypted_password: 'user3')
User.new(email: 'user4@exemple.com', encrypted_password: 'user4')
User.new(email: 'user5@exemple.com', encrypted_password: 'user5')
puts "Users created 💃"
