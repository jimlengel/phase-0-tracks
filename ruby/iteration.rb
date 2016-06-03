puts "Game Time!"

def go_warriors
	player1 = "Steph Curry"
	player2 = "T Thompson"
	yield(player1, player2)
end

go_warriors { |player1, player2| puts "Go, #{player1} and #{player2}!!" }

# declare array
warriors_positions = ["guard", "forward", "center", "coach"]

# delare hash
warriors_players = {"Steph Curry" => "guard", "Kevon Looney" => "forward", "Festus Ezeli" => "center", "Steve Kerr" => "coach"}

p warriors_positions
p warriors_players

# iterate through the array using .each
warriors_positions.each do |positions|
	puts positions
end

# iterate through the hash using .each
warriors_players.each do |name, position|
	puts name
	puts position
end 

puts "After .each call: "
p warriors_positions # array
p warriors_players # hash

# iterate through the array using .map!
warriors_positions.map! do |positions|
	positions.upcase
end

puts "After .map! call: "
p warriors_positions # array

# A method that iterates through the items, 
# deleting any that meet a certain condition 
# (for example, deleting any numbers that are less than 5).

less_five = [5, 6, 7, 1, 2, 4]
less_five.delete_if { |num| num < 5 }
puts less_five



# A method that filters a data structure for only items that 
# do satisfy a certain condition 
# (for example, keeping any numbers that are less than 5).

puts " "
filter_less_five = [5, 6, 7, 1, 2, 4]
filter_less_five.keep_if { |num| num < 5 }
puts filter_less_five

# A different method that filters a data structure for 
# only items satisfying a certain condition -- 
# Ruby offers several options!

puts " "
thing_three = [10,12,13,14,25,46,67]
thing_three.select! { |numb| numb.even? }
puts thing_three

# A method that will remove items from a data structure 
# until the condition in the block evaluates to false, then stops.

puts " "
thing_four = [10,20,30,40,50,60,70]
less_than_forty = thing_four.take_while { |i| i < 40 }
puts less_than_forty

