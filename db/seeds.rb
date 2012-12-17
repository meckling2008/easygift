# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Create Seed Users
User.create!(:email=>'jacklin10+user@gmail.com',
  :first_name=>'Joe', :last_name=>'Acklin', :password => 'password',
  :password_confirmation => 'password', :role=>"user")

User.create!(:email=>'meckling2008+user@gmail.com',
  :first_name=>'Amanda', :last_name=>'Siegel', :password => 'password',
  :password_confirmation => 'password', :role=>"user")
