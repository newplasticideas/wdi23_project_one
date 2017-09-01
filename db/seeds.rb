# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'nicholas.anthony.j@gmail.com', :password => 'chicken', :password_confirmation => 'chicken',  :firstname => 'Nick', :lastname => 'Johnson', :city => 'Marrickville', :state => 'NSW', :country => 'Australia', :postcode => 2204, :dob => '08061993'
u1.gender = "Male"
u1.dp = "no_pic.jpg"
u1.save


Profile.destroy_all
p1 = Profile.create :user_id => u1.id
u1.profile = p1
