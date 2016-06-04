# nested data structures

# moving list

ginger = ['yellow ginger', 'white ginger', 'blue Hawaiian ginger', 'baby ginger']
indian_spices = ['coriander', 'cumin', 'turmeric', 'mustard seeds', 'black pepper', 'salt']
indian_produce = ['onion', ginger, 'green chilies', 'cabbage', 'potatoes']
rice = ['brown Basmati rice', 'white Basmati rice']
potatoes = ['mashed potatoes', 'fried potatoes']
wheat = ['chapatti', 'dosa']
starch_list = [rice, potatoes, wheat]

indian_cooking = {
	'cooking vessel' => '8 qt dutch oven',
	'spices' => indian_spices,
	'produce' => indian_produce,
	'primary cooking method' => 'stir fry',
	'secondary cooking method' => 'steam',
	'tertiary cooking method' => 'broil',
	'starch' => starch_list
}

puts " "
puts "List of Indian spices:"
puts indian_cooking['spices']

puts " "
puts "List of Indian produce:"
puts indian_cooking['produce']

puts " "
puts "List of starches:"
puts indian_cooking['starch']
puts " "

add_items = ""
until add_items == "spice" || add_items == "produce" || add_items == "rice"
  puts "Would you like to add an Indian spice, an Indian produce, or a type of rice? (spice, produce, rice)"
  add_items = gets.chomp
  
  puts "What is the item?"
  item_to_add = gets.chomp
  
  case add_items
  when "rice"
    rice << item_to_add
    puts " "
    puts "You added:"
    puts indian_cooking['starch'][0].last
    puts " "
    puts "The new list of rice is:"
    puts indian_cooking['starch'][0]
  when "produce"
    indian_produce << item_to_add
    puts " "
    puts "You added:" 
    puts indian_cooking['produce'].last
    puts " "
    puts "The new list of produce is:"
    puts indian_cooking['produce']
  when "spice"
    indian_spices << item_to_add
    puts " "
    puts "You added:"
    puts indian_cooking['spices'].last
    puts " "
    puts "The new list of Indian spices is:"
    puts indian_cooking['spices']
  else
    puts "That is not an option."
  end
end	


