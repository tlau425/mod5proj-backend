# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# 10.times do
#   User.create(
#     username: Faker::Name.first_name,
#     password_digest: '123'
#   )
# end
tommy = User.create(username: 'tommy', password_digest: '123')
60.times do
  Warranty.create(
    name: Faker::Appliance.equipment,
    category: Faker::Color.color_name,
    wrnty_days: Faker::Number.between(1,100),
    buy_date: '2019/05/10',
    notes: Faker::ChuckNorris.fact,
    user_id: 1
    # user_id: Faker::Number.between(1,10)
  )
end

pic = Photo.create(picture: 'https://sites.google.com/site/louyifei/_/rsrc/1468866875963/research/barcode/diaper_clear.jpg', warranty_id: 1)
car = Warranty.create(name: 'car', category: 'cars', wrnty_days: 30, buy_date: '2019/01/01', notes: 'hello', user_id: 1)
