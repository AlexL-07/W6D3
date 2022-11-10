# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(username: 'alex0707101', )
user2 = User.create!(username: 'scgavin12',)


artwork1 = Artwork.create!(title: 'sunflowers' , artist_id: user1.id, image_url: 'www.sunflowers.com')
artwork2 = Artwork.create!(title: 'night_sky' , artist_id: user2.id, image_url: 'www.google.com')
artwork3 = Artwork.create!(title: 'idc' , artist_id: user2.id, image_url: 'www.idc.com')

ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)


comment1 = Comment.create!(author_id: user1.id , artwork_id: artwork1.id, body: 'wow, i love sunflowers')
comment2 = Comment.create!(author_id: user1.id, artwork_id: artwork2.id, body: 'ive never seen a sky so dark' )
comment3 = Comment.create!(author_id: user2.id, artwork_id: artwork1.id, body: 'this is so lame')
