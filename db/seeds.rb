# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    Listing.create(imgsrc: 'https://i.imgur.com/S5QQsGU.gif', title: 'test', brand: 'fuji', year: 1979, size: 52, description: 'desctest', location: 'queens')
end 