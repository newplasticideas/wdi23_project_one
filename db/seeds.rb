# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'nickj.borntohula@gmail.com', :password => 'chicken', :password_confirmation => 'chicken',  :firstname => 'Nick', :lastname => 'Johnson', :country => 'Australia', :state => 'NSW', :postcode => 2240, :dob => '8-6-1993', :gender => 'Male'

Profile.destroy_all
p1 = Profile.create :user_id => u1.id
