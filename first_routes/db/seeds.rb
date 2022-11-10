# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(username: 'alex0707101', )
User.create!(username: 'scgavin12',)


Artwork.create!(title: 'sunflowers' , artist_id: 1, image_url: 'www.sunflowers.com' )
Artwork.create!(title: 'night_sky' , artist_id: 2, image_url: 'www.google.com' )
Artwork.create!(title: 'idc' , artist_id: 1, image_url: 'www.idc.com' )
