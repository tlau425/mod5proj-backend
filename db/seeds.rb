# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tommy = User.create(username: 'tommy', password_digest: '123')
pic = Photo.create(img_url: 'www.asdf.com')
car = Warranty.create(name: 'car', category: 'cars', wrnty_days: 30, buy_date: '2019/01/01', notes: 'hello', photo_id: 1, user_id: 1)
