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

u2 = User.create :email => 'joel@ga.co', :password => 'chicken', :password_confirmation => 'chicken',  :firstname => 'Joel', :lastname => 'Turnbull', :city => 'Sydney', :state => 'NSW', :country => 'Australia', :postcode => 2000, :dob => '00000000'
u2.gender = "Male"
u2.dp = "no_pic.jpg"
u2.save

u3 = User.create :email => 'edgelord420@ga.co', :password => 'chicken', :password_confirmation => 'chicken',  :firstname => 'Matt', :lastname => 'Edge', :city => 'Sydney', :state => 'NSW', :country => 'Australia', :postcode => 2000, :dob => '00000000'
u3.gender = "Male"
u3.dp = "no_pic.jpg"
u3.save


Profile.destroy_all
p1 = Profile.create :user_id => u1.id
u1.profile = p1
p2 = Profile.create :user_id => u2.id
u2.profile = p2
p3 = Profile.create :user_id => u3.id
u2.profile = p3
