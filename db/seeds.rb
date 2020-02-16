# require "open-uri"

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
Cocktail.create(name: "Pornstar Martini")
Cocktail.create(name: "Whisky Sour")
Cocktail.create(name: "Pina Colada")
Cocktail.create(name: "Mojito")

Cocktail.all.each do |cocktail|
  file = File.open('app/assets/images/' + cocktail.name.split(" ")[0] + ".jpg")
  cocktail.photo.attach(io: file, filename: file, content_type: 'image/jpg')
end
# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts '..Doses'
# Creating Doses

puts 'Finished!'
