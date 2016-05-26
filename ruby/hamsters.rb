hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
fur color
whether the hamster is a good candidate for adoption
estimated age

puts "What is the hamster's name?"
name = gets.chomp

check = true
while check
	puts "What is the volume level? (1-10)"
	volume = gets.chomp
	if volume > 0
		check == false
	elsif volume > 10
		puts "That numbers is too large."
	else
		puts "That is not a number."
	end		
end


