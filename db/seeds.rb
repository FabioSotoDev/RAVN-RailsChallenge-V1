# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  first_name: 'Fabio',
  last_name: 'Soto',
  country: 'Peru',
  email: 'fabiosoto@ravn.co',
  password: 'changeme',
  password_confirmation: 'changeme',
  role: 'admin'
)
