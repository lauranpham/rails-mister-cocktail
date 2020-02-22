require "open-uri"

puts 'Cleaning database...'
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all


puts 'Creating...'
# Creating Ingredients
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].sort_by {|ingredient| ingredient["strIngredient1"] }.each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

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

puts 'Finished!'
