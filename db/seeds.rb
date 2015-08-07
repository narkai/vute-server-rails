# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#

user = nil
# user = User.create! :name => "rian", :email => "rian@rod.com", :password_digest => "rody", password: 'rody', password_confirmation: 'rody'
user = User.create! :name => "rian", :email => "rian@rod.com", password: 'rody', password_confirmation: 'rody'
# user.save

app = Doorkeeper::Application.new :name => user.name, :redirect_uri => user.email
app.owner = user
app.save

#

# user = nil
# user = User.create! :name => "jim", :email => "jim@rod.com", :password_digest => "rody", password: 'jim', password_confirmation: 'jim'

# if user.nil?
# 	app = Doorkeeper::Application.new :name => user.name, :redirect_uri => user.email
# 	app.owner = user
# 	app.save
# end
