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
Item.create(parentId: 4 , myId: 5, text: 'Rifle')
Item.create(parentId: 4 , myId: 10, text: 'Mencestraky')
Item.create(parentId: 3 , myId: 6, text: 'Tricka')
Item.create(parentId: 7 , myId: 7, text: 'Topanky')
Item.create(parentId: 7 , myId: 8, text: 'Tenisky')
Item.create(parentId: 7 , myId: 9, text: 'Papuce')
