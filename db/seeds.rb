# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
lisa = Student.find_or_create_by(first_name: "Lisa", last_name:"Antwi Adjei")
beyonce = Student.find_or_create_by(first_name: "Beyonce", last_name:"Knowles")
mariah = Student.find_or_create_by(first_name: "Mariah", last_name:"Carey")
nicki = Student.find_or_create_by(first_name:"Nicki", last_name: "Minaj")
