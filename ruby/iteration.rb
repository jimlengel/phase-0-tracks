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



