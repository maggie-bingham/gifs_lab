# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  user = User.create(email: Faker::Internet.email,
              username: Faker::Internet.user_name,
              bio: Faker::Lorem.sentence(2),
              profile_photo: Faker::Avatar.image,
              password: "password",
              password_confirmation: "password")
end

Gif.create(url: "http://media.giphy.com/media/VfkGlZD0hW4a4/giphy.gif", created_at: Time.now, user_id: 1)
Gif.create(url: "http://media3.giphy.com/media/Qy9hRuWrKjY2I/giphy.gif", created_at: Time.now, user_id: 2)
Gif.create(url: "http://media.giphy.com/media/5aLrlDiJPMPFS/giphy.gif", created_at: Time.now, user_id: 3)
Gif.create(url: "http://media.giphy.com/media/13LRdvpcGX6oN2/giphy.gif", created_at: Time.now, user_id: 4)
Gif.create(url: "http://media2.giphy.com/media/7IrtGOyJy3I9W/giphy.gif", created_at: Time.now, user_id: 5)
Gif.create(url: "http://media0.giphy.com/media/DY1PFrmHZqUz6/giphy.gif", created_at: Time.now, user_id: 6)
Gif.create(url: "http://media.giphy.com/media/lwLxaQew5N2I8/giphy.gif", created_at: Time.now, user_id: 7)
Gif.create(url: "http://media.giphy.com/media/N5PsztQSjkYMw/giphy.gif", created_at: Time.now, user_id: 8)
Gif.create(url: "http://media3.giphy.com/media/uNLPqAPuJQQJq/giphy.gif", created_at: Time.now, user_id: 9)
Gif.create(url: "http://media.giphy.com/media/3aGZA6WLI9Jde/giphy.gif", created_at: Time.now, user_id: 10)
