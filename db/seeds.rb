# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
more_rooms = [
  {:number => 'EN 318', :build => 'Engineering'},
  {:number => 'EN 301', :build => 'Engineering'},
  {:number => 'EN 208', :build => 'Engineering'},
  {:number => 'EN 506', :build => 'Engineering'},
  {:number => 'SC 3015', :build => 'SC Building'},
  {:number => 'SC 3048', :build => 'SC Building'},
  {:number => 'SC 2048 ', :build => 'SC Building'},
  {:number => 'S-106 ', :build => 'Lecture Classroom 5'},
  {:number => 'S-107 ', :build => 'Lecture Classroom 5'},
  {:number => 'S-108 ', :build => 'Lecture Classroom 5'},
  ]
more_rooms.each do |room|
  Room.create!(room)
end