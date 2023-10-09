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

Pokemon.create(
  name: 'Pikachu',
  main_technique: 'Thunder',
  image: 'https://img.pokemondb.net/sprites/lets-go-pikachu-eevee/normal/pikachu.png',
  countries: ['Peru, USA'],
  types: ['Electric'],
  description: 'Starter electric pokemon'
)

Pokemon.create(
  name: 'Charmander',
  main_technique: 'Flamethrower',
  image: 'https://img.pokemondb.net/sprites/lets-go-pikachu-eevee/normal/charmander.png',
  countries: ['Peru, USA'],
  types: ['Fire'],
  description: 'Starter fire pokemon'
)

Pokemon.create(
  name: 'Bulbasaur',
  main_technique: 'Razor Leaf',
  image: 'https://img.pokemondb.net/sprites/lets-go-pikachu-eevee/normal/bulbasaur.png',
  countries: ['Peru, USA'],
  types: ['Grass, Poison'],
  description: 'Starter plant pokemon'
)

Pokemon.create(
  name: 'Squirtle',
  main_technique: 'Water Gun',
  image: 'https://img.pokemondb.net/sprites/lets-go-pikachu-eevee/normal/squirtle.png',
  countries: ['Peru, USA'],
  types: ['Water'],
  description: 'Starter water pokemon'
)