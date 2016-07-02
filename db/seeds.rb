# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
10.times do
  User.create(name: Faker::Internet.user_name)
end

100.times do
  Post.create(user: User.random, content: Faker::Lorem.paragraph(2, true, 4))
end

1000.times do
  Commet.create(user: User.random, post: random_post, content: Faker::Lorem.paragraph(1, true, 4))
end


def random_post
  random_number = rand(Post.count)
  Post.offset(random_number).limit(1)
end
