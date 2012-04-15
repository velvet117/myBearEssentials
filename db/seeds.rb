# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cs = Department.create(acronym: 'COMSCI', name: 'Computer Science')
ee = Department.create(acronym: 'EE', name: 'Electrical Engineering')

Course.create(number:170, title: 'Algorithms', department: cs, units: 4, difficulty: 4)
Course.create(number:160, title: 'User Interface', department: cs, units: 4, difficulty: 2)
Course.create(number:188, title: 'Aritificial Intelligence', department: cs, units: 4, difficulty: 4)
Course.create(number:122, title: 'Networking', department: ee, units: 4, difficulty: 2)
