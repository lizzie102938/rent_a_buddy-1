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
User.destroy_all
puts "Users destroyed ! 😭"

puts "..."

puts "Destroying the bookings..."
Booking.destroy_all
puts "Bookings destroyed ! 😭"

puts "..."

puts "Creating 20 super true buddies..."
20.times do
  buddy = Buddy.new(name: ['Antoine', 'Pierre', 'Léa', 'Lizzie', 'Dorothea', 'David', 'Julie', 'Mélanie', 'Jésus',
                           'Aleksander', 'Helmut', 'Louis', 'Pierre-Emmanuel'].sample,
                    age: rand(18..99),
                    gender: Faker::Gender.type,
                    city: ['Berlin', 'Hamburg', 'Leipzig', 'Postdam', 'Munich'].sample,
                    biography: Faker::Lorem.sentence(word_count: 50),
                    hobby: [Faker::Hobby.activity, Faker::Hobby.activity],
                    language: ['German', 'French', 'English', 'Chinese', 'Hungarian', 'Greek', 'Russian', 'Angolan',
                               'Ethiopian', 'Arabic'].sample(2),
                    price: rand(50..100),
                    photo: )
  buddy.save!
end
puts "Buddies created 👯"

puts "..."

puts "Creating 5 super true users..."
User.create(email: 'user1@example.com', password: 'user11', username: 'Lizzie')
User.create(email: 'user2@example.com', password: 'user22', username: 'James')
User.create(email: 'user3@example.com', password: 'user33', username: 'Aleks')
User.create(email: 'user4@example.com', password: 'user44', username: 'Thea')
User.create(email: 'user5@example.com', password: 'user55', username: 'David')
puts "Users created 💃"
