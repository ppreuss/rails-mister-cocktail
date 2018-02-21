require 'json'
require 'open-uri'


puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating Ingredients...'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
list_ingredients = JSON.parse(ingredient_serialized)



50.times do
  ingredients = Ingredient.new(name: list_ingredients["drinks"].sample["strIngredient1"])
  p ingredients
end




puts "DB done son."
