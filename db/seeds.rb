# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	user = User.create(email: 'user@gmail.com', password: '123456', username: 'user')
	admin = User.create(email: 'admin@gmail.com', password: '123456', username: 'admin', admin: true)
	
	shelf1 = Shelf.create(name: 'Literature', user_id: 2)
	shelf2 = Shelf.create(name: 'History', user_id: 2)
	shelf3 = Shelf.create(name: 'Programming', user_id: 2)

	book1 = Book.create(title: 'Война с саламандрами', author: 'Карел Чапек', status: :not_readed, shelf_id: 1)
	book2 = Book.create(title: '1984', author: 'Джордж Оруэлл', status: :readed, shelf_id: 1)
	book3 = Book.create(title: 'Скотный двор', author: 'Джордж Оруэлл', status: :not_readed, shelf_id: 1)
	book4 = Book.create(title: 'Утопия', author: 'Томас Мор', status: :not_readed, shelf_id: 1)
	book5 = Book.create(title: 'Мартин Иден', author: 'Джек Лондон', status: :not_readed, shelf_id: 1)
	book6 = Book.create(title: 'Илья Ильф, Евгений Петров', author: 'Двенадцать стульев', status: :read_now, shelf_id: 1)
	book7 = Book.create(title: 'Мартин Иден', author: 'Джек Лондон', status: :readed, shelf_id: 1)
	book8 = Book.create(title: 'Война миров', author: 'Герберт Уэллс', status: :not_readed, shelf_id: 1)
	book9 = Book.create(title: 'Машина времени', author: 'Герберт Уэллс', status: :not_readed, shelf_id: 1)