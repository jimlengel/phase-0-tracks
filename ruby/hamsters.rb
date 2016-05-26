# Jim Lengel and Jacob Golding worked on this project together on 4/25/16.

puts "What is the hamster's name?"
name = gets.chomp

check = true
while check
	puts "What is the volume level? (1-10)"
	volume = gets.chomp
	volume2 = volume.to_i
	if volume2 > 10
		puts "That number is too large."
	elsif volume2 > 0
		check = false
	elsif volume2 < 0
		puts "That number is too small."
	else
		puts "That is not a number."
	end		
end

puts "What color is the fur?"
fur_color = gets.chomp

check2 = true
while check2
	puts "Is the hamster a good candidate for adoption? y/n"
	adoption_ready = gets.chomp

	if adoption_ready == "y"
		check2 = false
	elsif adoption_ready == "n"
		check2 = false			
	else 
		puts "Sorry, I did not understand."
	end
end

puts "What is the estimated age of the hamster?"
est_age = gets.chomp
est_age.to_i

if est_age == ""
	est_age = nil
end

puts "The hamster's name is #{name}. The volume level is #{volume}. The fur is #{fur_color}. The hamster is ready for adoption: #{adoption_ready}. The estimated age is: #{est_age}."


