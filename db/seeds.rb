puts 'Cleaning database...'
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

# Creating Cocktails
Cocktail.create(name: "Pornstar Martini")
Cocktail.create(name: "Whisky Sour")
Cocktail.create(name: "Pina Colada")
Cocktail.create(name: "Mojito")

puts 'Finished!'
