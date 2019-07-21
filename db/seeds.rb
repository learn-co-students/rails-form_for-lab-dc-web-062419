# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SchoolClass.destroy_all
SchoolClass.create(title: "Best Class", room_number: 402)
SchoolClass.create(title: "Second Best Class", room_number: 975)
SchoolClass.create(title: "One of the best Classes", room_number: 503)
SchoolClass.create(title: "Worst Class", room_number: 19)

