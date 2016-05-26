puts "What is the hamster's name?"
name = gets.chomp

check = true
while check
	puts "What is the volume level? (1-10)"
	volume = gets.chomp
	volume.to_i
	if volume > 0
		check == false
	elsif volume > 10
		puts "That numbers is too large."
	else
		puts "That is not a number."
	end		
end

puts "What color is the fur?"
fur_color = gets.chomp

adoption_ready = ""
while adoption_ready != "y" || "n"
	puts "Is the hamster a good candidate for adoption? y/n"
	adoption_ready = gets.chomp
end

puts "What is the estimated age of the hamster?"
est_age = gets.chomp
est_age.to_i

if est_age == ""
	est_age = nil
end




