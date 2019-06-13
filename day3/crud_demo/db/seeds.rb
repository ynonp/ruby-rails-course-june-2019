# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: 'demo', favorite_color: 'blue', email: 'demo@gmail.com', password: '10203040')
u2 = User.create(name: 'system', favorite_color: 'red', email: 'system@gmail.com', password: 'secret')

red = Tag.create(name: 'red')
blue = Tag.create(name: 'blue')

t1 = Task.create(description: 'Turn off the lights', priority: 2, user_id: u1.id)
t2 = Task.create(description: 'Turn on the lights', priority: 2, user_id: u1.id)
t3 = Task.create(description: 'go fish', priority: 2, user_id: u1.id)
t4 = Task.create(description: 'say hi', priority: 2, user_id: u1.id)

c1 = Comment.create(user: u2, task: t1, text: 'very important')
c1 = Comment.create(user: u2, task: t1, text: 'and again')
c3 = Comment.create(user: u1, task: t2, text: 'bye bye')
