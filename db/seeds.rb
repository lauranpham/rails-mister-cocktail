puts 'Cleaning database...'
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all


puts 'Creating...'
# Creating Ingredients
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "passionfruit")
Ingredient.create(name: "vodka")
Ingredient.create(name: "passoa")
Ingredient.create(name: "lime juice")
Ingredient.create(name: "sugar syrup")

puts '..Cocktails'
# Creating Cocktails
Cocktail.create(name: "Pornstar Martini", image_url: "qrjiv6p7oswijbhfrjwr")
Cocktail.create(name: "Whisky Sour", image_url: "pxmknqkgx1fgye5gpx5v")
Cocktail.create(name: "Pina Colada", image_url: "pqhkgiunevlvdmzcxbuz")
Cocktail.create(name: "Mojito", image_url: "smvvl0wpujixxw4viza2")

puts '..Doses'
# Creating Doses

puts 'Finished!'
