require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

floor_count = 18
room_per_floor = 16
user_room = 4
contract_per_user = 3

floor_count.times do |f|
  room_per_floor.times do |r|
    room = Room.create(floor: f, number: r)

    user_room.times do |u|
      user =  User.create(name: Faker::Name.name, email:Faker::Internet.email,age: (18..26).to_a.sample)

        contract_per_user.times do |c|
          Contract.create(user: user, room: room, year: 2015 + c)
        end
    end

    puts "#{room_per_floor*f + r} / #{floor_count*room_per_floor}"
  end
end