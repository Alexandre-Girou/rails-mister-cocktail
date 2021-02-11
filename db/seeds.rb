# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito")
cuba = Cocktail.create(name: "Cuba Libre")
sex = Cocktail.create(name: "Sex on the Beach")

Dose.create(description: "1oz", ingredient_id: lemon.id, cocktail_id: mojito.id)
Dose.create(description: "3cl", ingredient_id: ice.id, cocktail_id: cuba.id)
Dose.create(description: "2", ingredient_id: mint.id, cocktail_id: sex.id)