# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all users and plans, bye bob!"

User.destroy_all
Plan.destroy_all

puts "creating new users and plan"

bob = User.create(username: 'Bob', email: 'bob@mail.com', password: 'aaaaaa')
bob.save!

puts "User #{bob.username} created with id #{bob.id}!"

gary = User.create(username: 'Gazza', email: 'gazza@mail.com', password: 'aaaaaa')
gary.save!

puts "User #{gary.username} created with id #{gary.id}!"

coding = Plan.create(name: "Learning JS", user_id: bob.id)
coding.save!

puts "Plan #{coding.name} created with id #{coding.id}!"

running = Plan.create(name: "Learning to Run!", user_id: gary.id)
running.save!

puts "Plan #{coding.name} created with id #{running.id}!"

puts "done!"
