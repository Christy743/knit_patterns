# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create(username: "Lucky Lugiano", email: "ll@yahoo.com", password: "12345678")
end

5.times do
  Pattern.create(name: "Red Shawl", content: "Knit here, Purl there and everywhere")
end

5.times do
  Needle.create(us_size: "8", name: "Circular 24 inch")
end
