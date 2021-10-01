# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(user_id: 1, caption: "hello", likes: 0, seeded_image_data: "https://loremflickr.com/g/320/240/hiking")
Post.create(user_id: 2, caption: "howdy", likes: 0, seeded_image_data: "https://loremflickr.com/g/320/240/hiking")

# User.create(name: "Kev", username: "kkirby16", password: "password")
# User.create(name: "John", username: "johnuser", password: "password")
#***add in a few seed data posts with an image I select as the seeded_image_data attribute
