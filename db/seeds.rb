# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.create([
  {date: 20080820, location: 'Denver', description:'NY Celebration', capacity: '200',requires_id:true},
  {date: 20150820, location: 'Boulder', description:'Birthday', capacity: '20',requires_id:true},
  {date: 20150810, location: 'Broomfield', description:'Concert', capacity: '400',requires_id:true},
  {date: 20150720, location: 'Lafayette', description:'Prom', capacity: '75',requires_id:false}
])
