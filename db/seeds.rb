# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@restaurant = Restaurant.create!(id:1, name: 'Illegal Petes', rating: 5, allows_children: true)
@restaurant1 = Restaurant.create!(id: 2, name: 'Pinche Tacos', rating: 4, allows_children: false)

@sauce1 = SpicySauce.create!(id: 1, name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
@sauce2 = SpicySauce.create!(id: 2, name: 'Hayes Ways', spice_level: 6, calories: 15, made_today: false, restaurant_id: @restaurant.id)
@sauce3 = SpicySauce.create!(id: 6, name: 'Burnin Beau', spice_level: 9.5, calories: 40, made_today: true, restaurant_id: @restaurant1.id)
@sauce4 = SpicySauce.create!(id: 5, name: 'Cheaters Never Win', spice_level: 3, calories: 30, made_today: false, restaurant_id: @restaurant.id)
@sauce5 = SpicySauce.create!(id: 3, name: 'Northwest Is Best', spice_level: 7.5, calories: 30, made_today: true, restaurant_id: @restaurant.id)
@sauce6 = SpicySauce.create!(id: 4, name: 'Elder Emo', spice_level: 9, calories: 35, made_today: false, restaurant_id: @restaurant.id)
@sauce7 = SpicySauce.create!(id: 7, name: 'LA ALL THE WAY', spice_level: 7, calories: 20, made_today: false, restaurant_id: @restaurant1.id)
@sauce8 = SpicySauce.create!(id: 8, name: 'Slappin Sissy', spice_level: 5, calories: 35, made_today: true, restaurant_id: @restaurant1.id)
@sauce9 = SpicySauce.create!(id: 9, name: 'Mary Lou The GOAT', spice_level: 8, calories: 15, made_today: false, restaurant_id: @restaurant1.id)