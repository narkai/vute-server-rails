# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#

# User.create! :email => "rian@rod.com", :password_digest => "rody"
user = User.create! :email => "rian@rod.com", :password_digest => "rody", password: 'rody', password_confirmation: 'rody'

app = Doorkeeper::Application.new :name => 'rian', :redirect_uri => 'http://rian.com'
app.owner = user
app.save