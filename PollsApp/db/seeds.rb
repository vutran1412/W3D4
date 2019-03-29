# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

users = []
10.times {users << Faker::Movies::BackToTheFuture.character}

users.each do |user|
  User.create({name: user})
end

questions = ["how stressed are you?","how many housrs have you slept?"."do you wanna cry"]

questions.each do |question|
  Poll.create({})
end