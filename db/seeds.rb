# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = {name: "Sivamani"}
# contact = {name: "Sivamani", user_id: 1}
# # Ruby program to illustrate 'for' 
# # loop using range as expression 

# for a in 1..10000 do
#   user = User.create({name: "Sivamani"})
#   if user
#     puts a
#     for b in 1..100 do
#       contact = Contact.create({name: "Sivamani", user_id: user.id})
#     end
#   end
# end

# 100000.times { |i| puts i; User.create(name:"user #{i}").contacts.create(name:"ct#{i}").posts.create(post:"Sample text #{i}")}
100000.times do   |i| 
	puts i
	u = User.create(name:"user #{i}")
	u.contacts.build(name:"ct#{i}")
	u.posts.build(post:"Sample text #{i}")
	u.save
end