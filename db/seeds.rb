# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  Comment.create(title: 'First Post!', content: 'My first comment')
  c2 = Comment.create(title: 'comment2', content: 'My second comment')
  Comment.create(title: 'c2r1', content: 'a reply', parent: c2)
  c2r2 = Comment.create(title: 'c2r2', content: 'a reply', parent: c2)
  Comment.create(title: 'c2r2r1', content: 'a reply', parent: c2r2)
end
