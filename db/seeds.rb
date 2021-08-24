# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({email: "brodyboi123@cs.com", password: "mmmmmm"})

user2 = User.create({email: "derrick123@cs.com", password: "asasas"})



track1 = Track.create({name: 'Indianapolis', location: 'Indiana USA', track_type: 'oval', length: 5, corners: 4, description: "Fastest non drag strip in the US!"})

track2 = Track.create({name: 'Circuito Internacional de Algarve', location: 'Portugal', track_type: 'circuit', length: 4.8, corners: 15, description: "Challenging modern circuit with blind crests and plenty of areas to throw off racers."})

track3 = Track.create({name: 'Laguna Seca', location: 'USA', track_type: 'circuit', length: 2.3, corners: 12, description: "Tight, flowing, and challenging. Not for new racers."})

track4 = Track.create({name: 'Suzuka', location: 'Japan', track_type: 'circuit', length: 8.3, corners: 15, description: "Fast modern, yet classic circuit in a unique figure 8 format. Great for all vehicle types."})

track5 = Track.create({name: 'Limerock Park', location: 'USA', track_type: 'circuit', length: 1.50, corners: 7, description: 'The Bull ring! A short yet intense lap where mistakes are punished heavily.'})

track6 = Track.create({name: 'Dayona International Speedway', location: 'USA', track_type: 'oval', length: 2.5, corners: 7, description: 'One of the most iconic oval tracks in the entire world. Fast, banked, and iconic!'})



event1 = Event.create({title: 'Track Daze', location_id: 1, organizer_id: 1, attendees_id: 2, description: "Open lapping/ test and tune."})

event2 = Event.create({title: 'Miata Masters', location_id: 3, organizer_id: 2, attendees_id: 2, description: "MX5 Cup Masters. The best in the category meet here."})



car1 = Car.create!({make: "Toyota", model: "GT86", year: 2017, color: "orange", drivetrain: "FR", owner_id: 2, description: "A basically stock modern front engine, rear wheel drive sports coupe with modest power, and a manual transmission. Quick enough to be fun and completely driver focused." })

car2 = Car.create!({make: "Honda", model: "Civic Type R", year: 2018, color: "white", drivetrain: "FF", owner_id: 1, description: "A fast, capable hot hatch." })