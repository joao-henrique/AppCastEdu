# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Room.create(tittle:" Estudos de EDO",description:"Aqui abordaremos o ")
Room.create(tittle:" Estudos de EDA",description:"Aqui ")
Room.create(tittle:" OO",description:"Aqui abordaremos o ")


Category.create(tittle:" Software",description:"Aqui abordaremos o ")
Category.create(tittle:" Matematica",description:"Aqui abordaremos o ")


Forum.create(tittle:"Forum 1",description:"Forum 1")
Forum.create(tittle:"Forum 2",description:"Forum 2")
Forum.create(tittle:"Forum 3",description:"Forum 3",room_id:1)
Forum.create(tittle:"Forum 4",description:"Forum 4",room_id:1)
