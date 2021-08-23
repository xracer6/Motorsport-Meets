# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

track1 = Track.create({name: 'Indianapolis', location: 'Indiana USA', track_type: 'oval', length: 5, corners: 4, description: "Fastest non drag strip in the US!"})

track2 = Track.create({name: 'Circuito Internacional de Algarve', location: 'Portugal', track_type: 'circuit', length: 4.8, corners: 15, description: "Challenging modern circuit with blind crests and plenty of areas to throw off racers."})

event1 = Event.create({title: 'Track Daze', location_id: 1, organizer_id: 1, attendees_id: 2, description: "Open lapping/ test and tune."})