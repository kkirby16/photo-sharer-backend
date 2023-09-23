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

# Post.create(user_id: 4, caption: "I will remember this drive forever!", seeded_image_data: "https://photos.smugmug.com/Valley-of-Fire/i-VNcfzCM/0/a6a2c2f6/L/0S6A0811-L.jpg")
Post.create(user_id: 3, caption: "Check this out!", seeded_image_data: "pexels-eberhard-grossgasteiger-1366919 (1).jpg")
Post.create(user_id: 4, caption: "Look at this!", seeded_image_data: "pexels-lukas-schulz-6113860.jpg")
Post.create(user_id: 2, caption: "Love this capture I got!", seeded_image_data: "pexels-thomas-vitali-3486711.jpg")
Post.create(user_id: 3, caption: "Loved how this shot turned out!", seeded_image_data: "pexels-leo-enrique-paredes-lopez-17324478.jpg")
Post.create(user_id: 1, caption: "One of my favorite places!", seeded_image_data: "pexels-baptiste-valthier-803217.jpg")
# Post.create(user_id: 1, caption: "Loved the crazy views from this road!!", seeded_image_data: "https://photos.smugmug.com/photos/i-vP5bzxV/0/X4/i-vP5bzxV-X4.jpg")
# Post.create(user_id: 3, caption: "One of the best places I've ever been!", seeded_image_data: "https://photos.smugmug.com/photos/i-dwMNwm6/0/X4/i-dwMNwm6-X4.jpg")
# Post.create(user_id: 2, caption: "Best hike ever!", seeded_image_data: "https://photos.smugmug.com/photos/i-tVmqwmz/0/X4/i-tVmqwmz-X4.jpg")
# Post.create(user_id: 1, caption: "This was a spectacular flight!", seeded_image_data: "https://photos.smugmug.com/photos/i-4gjqwsq/0/X4/i-4gjqwsq-X4.jpg")

#***add in a few seed data posts with an image I select as the seeded_image_data attribute
