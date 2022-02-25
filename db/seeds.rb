require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying the bookings..."
Booking.destroy_all
puts "Bookings destroyed ! 😭"

puts "..."

puts "Destroying the buddies..."
Buddy.destroy_all
puts "Buddies destroyed ! 😭"

puts "..."

puts "Destroying the user..."
User.destroy_all
puts "Users destroyed ! 😭"

puts "..."

puts "Creating 10 super true buddies..."
count = 0
10.times do
  buddy = Buddy.new(name: ['Antoine', 'Pierre', 'Léa', 'Lizzie', 'Dorothea', 'David', 'Julie', 'Mélanie', 'Jésus',
                           'Aleksander', 'Helmut', 'Louis', 'Pierre-Emmanuel'][count],
                    age: rand(18..99),
                    gender: Faker::Gender.type,
                    city: ['Berlin', 'Hamburg', 'Leipzig', 'Potsdam', 'Munich'].sample,
                    biography: ["I'm a kitchen assistant who enjoys eating out, badminton and playing card games.
                                I am kind and considerate, but can also be very dull and a bit untrustworthy.
                                I started studying food science at college but never finished the course. I am allergic
                                to sugar and have a severe phobia of flying",

                                "I am a trainee tradesperson who enjoys watching sport, ferret racing and spreading fake
                                 news on Facebook. I am energetic and entertaining, but can also be very dull and a
                                 bit unstable.

                                I am an Australian Christian. I started college but never finished the course. I am
                                allergic to pine cones.

                                Physically, I am in good shape. I am average-height with light skin, black hair and
                                black eyes.",

                                "I am a tradesperson's assistant who enjoys theatre, stealing candy from babies and
                                tennis. I am stable and gentle, but can also be very greedy and a bit evil.
                                I am Australian and has a degree.

                                Physically, I am in pretty good shape. I am very tall with pale skin, white hair and
                                black eyes.

                                I grew up in a working class neighbourhood. After my father died when I was young, I was
                                 raised by my mother ",
                                "I am a 35-year-old personal trainer who enjoys escapology,
                                camping and painting. I'm giving and stable, but can also be very sadistic and a bit
                                unintelligent.

                                I'm Danish who didn't finish school. I have a severe phobia of blood",
                                "I grew up in a working class neighbourhood. My parents separated when I was small, but
                                remained friends and provided a happy, stable home.

                                I'm currently single. My most recent romance was with a politician called Madonna Sukie
                                Doyle, who was 7 years older than me. Madonna died in 2019.The papers reported the
                                cause of death: 'pneumonia'",

                                "I'm currently in a relationship with Ciaran Darcey Hernandez. Ciaran is 15 years older
                                than me and works as a receptionist.

                                I have four children with Ciaran: Alex aged 50, Everett aged 52, Quinn aged 54 and Neve
                                aged 56.",

                                "I'm a 27-year-old sous chef who enjoys watching YouTube videos, donating blood and
                                podcasting. I'm brave and creative, but can also be very rude and a bit rude.

                                I'm Egyptian and started studying food science at college but never finished the course.",

                                "I'm French who didn't finish school.

                                Physically, I'm in pretty good shape. I'm average-height with chocolate skin, grey hair
                                and brown eyes.

                                I grew up in an upper class neighbourhood. I was raised by my mother, my father having
                                left when I was young. ",
                                "I grew up in a working class neighbourhood. I was raised in a happy family home with
                                two loving parents.

                                I'm currently in a relationship with Serina Trilby Griffiths. Serina is the same age as
                                me and works as a student.

                                My best friend is an associate at a law firm called Rowanne Simpson. We are
                                inseparable. I also hang around with an associate at a law firm called Cory Herbert.
                                We enjoy cookery together. ",

                                "I am a health centre receptionist who enjoy travelling, going to the movies and adult
                                colouring books. I am exciting and generous, but can also be very rude and a bit
                                untrustworthy."][count],
                    hobby: [Faker::Hobby.activity, Faker::Hobby.activity].join(", "),
                    language: ['German', 'French', 'English', 'Chinese', 'Hungarian', 'Greek', 'Russian', 'Angolan',
                               'Ethiopian', 'Arabic'].sample(2),
                    price_hour: rand(30..100),
                    photo: ['https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA4ODQ0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1527082395-e939b847da0d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA4OTkw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1531908012224-8f8865e79a96?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDA5&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1584361853901-dd1904bb7987?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDQw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDUx&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDY3&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1539614474468-f423a2d2270c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDg1&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MTA0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1610669053829-a92f618a4eb6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MTIy&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
                            'https://images.unsplash.com/photo-1531384441138-2736e62e0919?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MTM1&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'][count])
  buddy.save!
  count += 1
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
