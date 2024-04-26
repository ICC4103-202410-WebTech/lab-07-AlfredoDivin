# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all

users = User.create([
    {name: "Roberto", email: "roberto@gmail.com", password: "roberto123"},
    {name: "Javiera", email: "javiera@gmail.com", password: "javiera257"},
    {name: "Alfredo", email: "alfredo@gmail.com", password: "alfredo"},
    {name: "Paula", email: "paula@gmail.com", password: "pau377"},
    {name: "Ignacio", email: "ignacio@gmail.com", password: "ignacio"}
])

tags = Tag.create([
    {name: "Trending"},
    {name: "Celebrity"},
    {name: "Travel"},
    {name: "Interesting"},
    {name: "Cars"}
])

posts = Post.create([
  { title: "New car guys!", content: "Just received my brand new mustang", user: users[0], tags: [tags[3], tags[4]] },
  { title: "Ferrari", content: "Ferrari just dropped a new car, no one expected this!", user: users[1], tags: [tags[0], tags[4]] },
  { title: "Monkeys", content: "Just found som really cute monkeys, they stole my things", user: users[2], tags: [tags[3]] },
  { title: "Plague", content: "Some sort of virus is spreading in China", user: users[3], tags: [tags[2], tags[3]] },
  { title: "Tom Cruise Dead", content: "Tom Cruise, 61, dies while attemting new stunt", user: users[4], tags: [tags[1]] },
  { title: "Gossip", content: "DiCaprio new girl?", user: users[0], tags: [tags[1]] },
  { title: "Athens", content: "Not quite what I expected", user: users[1], tags: [tags[2]] },
  { title: "Quantum Computing", content: "QC is finally affordable", user: users[2], tags: [tags[3], tags[0]] },
  { title: "New Marathon Record", content: "Fastest marathon runner beats record by 5 minutes!", user: users[3], tags: [tags[0]] },
  { title: "The Oceans Are Open", content: "New tech enables safe deep sea exploration, the oceans are open to the public", user: users[4], tags: [tags[0]] }
])