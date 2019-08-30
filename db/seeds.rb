# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: 'test1', password:'abc123')
user2 = User.create(username: 'test2', password:'abc123')

secret1 = Secret.create(content: 'This is a secret', user: user1)
secret2 = Secret.create(content: 'This is also a secret', user:user2)

shoutou1 = Shoutout.create(content: 'This is a shoutout', user: user1)
shoutou2 = Shoutout.create(content: 'This is also shoutout', user: user2)


