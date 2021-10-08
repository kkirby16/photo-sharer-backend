# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Kev", username: "kkirby16", password: "password")
User.create(name: "John", username: "johnuser", password: "password")
User.create(name: "Jim", username: "jimuser", password: "password")
User.create(name: "Dan", username: "dansmith", password: "password")

# like1 = Like.create(user_id: 3, post_id: 1)

Post.create(user_id: 4, caption: "I will remember this drive forever!", seeded_image_data: "https://photos.smugmug.com/Valley-of-Fire/i-VNcfzCM/0/a6a2c2f6/L/0S6A0811-L.jpg")
Post.create(user_id: 3, caption: "Check this out!", seeded_image_data: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.15752-9/243344596_1485820005110117_4987792217149552732_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=ae9488&_nc_ohc=du-uf1wFs3EAX8lfZHa&_nc_ht=scontent-sea1-1.xx&oh=b6f57b2b65cfc3c0b0d11869d0895b5c&oe=61807430")
Post.create(user_id: 4, caption: "Look at this!", seeded_image_data: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.15752-9/242919230_403323274697101_2355122384663906847_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=ae9488&_nc_ohc=pEaQszAqUGgAX9IQifQ&_nc_ht=scontent-sea1-1.xx&oh=641ff925868ba93bade17cd70fd13945&oe=617D2E28")
Post.create(user_id: 2, caption: "Love this capture I got!", seeded_image_data: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.15752-9/242817805_169981778621698_8980700211675454975_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=ae9488&_nc_ohc=vm0pszRzWCEAX-stAEs&tn=YfmM6eeA2bmdZyBS&_nc_ht=scontent-sea1-1.xx&oh=eae9c53edf2980cf4cd40f9dc28a2002&oe=617F6BBD")
Post.create(user_id: 3, caption: "Loved how this shot turned out!", seeded_image_data: "https://photos.smugmug.com/photos/i-xmz9xCJ/0/X4/i-xmz9xCJ-X4.jpg")
Post.create(user_id: 1, caption: "One of my favorite places!", seeded_image_data: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.15752-9/243031383_1219882711856013_277324293903763911_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=ae9488&_nc_ohc=RB5GJMg9zLsAX-8J0ts&_nc_ht=scontent-sea1-1.xx&oh=5d6179d1361fc526df721af60aae6ca3&oe=617EF94F")
Post.create(user_id: 1, caption: "Loved the crazy views from this road!!", seeded_image_data: "https://photos.smugmug.com/photos/i-vP5bzxV/0/X4/i-vP5bzxV-X4.jpg")
Post.create(user_id: 3, caption: "One of the best places I've ever been!", seeded_image_data: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.15752-9/243334597_268765831782929_2610611234997874559_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=ae9488&_nc_ohc=lDoYE1W7fUgAX9yrlnZ&_nc_ht=scontent-sea1-1.xx&oh=722094acbc137b6141cc3c12dd298e0e&oe=617CE47D")
Post.create(user_id: 2, caption: "Best hike ever!", seeded_image_data: "https://photos.smugmug.com/photos/i-tVmqwmz/0/X4/i-tVmqwmz-X4.jpg")
Post.create(user_id: 1, caption: "This was a spectacular flight!", seeded_image_data: "https://photos.smugmug.com/photos/i-4gjqwsq/0/X4/i-4gjqwsq-X4.jpg")

#***add in a few seed data posts with an image I select as the seeded_image_data attribute
