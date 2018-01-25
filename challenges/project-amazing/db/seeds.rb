# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
puts 'CREATING ADMIN USER'
user = User.create name: 'Admin'.dup,
                   email: 'admin@website.com'.dup,
                   password: 'totallysecurepassword'.dup,
                   password_confirmation: 'totallysecurepassword'.dup
