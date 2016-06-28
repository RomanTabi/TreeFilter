# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.delete_all
Item.create(parentId: 1 , myId: 1, text: 'Prislusenstvo')
Item.create(parentId: 2 , myId: 2, text: 'Rukavice')
Item.create(parentId: 3 , myId: 3, text: 'Oblecenie')
Item.create(parentId: 3 , myId: 4, text: 'Nohavice')
Item.create(parentId: 3 , myId: 5, text: 'Tricka')
Item.create(parentId: 6 , myId: 6, text: 'Topanky')
Item.create(parentId: 6 , myId: 7, text: 'Tenisky')
Item.create(parentId: 6 , myId: 8, text: 'Papuce')