

def vampire_questions()
	# get the current year
	time = Time.new

	# ask their name
	puts "What is your name?"
	name = gets.chomp

	# ask their age
	puts "How old are you?"
	age = gets.chomp

	# ask what year they were born (to later compare to their age)
	puts "What year were you born?"
	year_born = gets.chomp

	# ask about eating garlic - vampires hate it
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	# ask about health insurance - vampires don't need it
	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	insurance = gets.chomp

	# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
	# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
	# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
	# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	# Otherwise, print “Results inconclusive.”

	computed_age = time.year.to_i - year_born.to_i

	is_a_vampire = ""

	if (year_born == computed_age) && (garlic_bread == "y" || insurance == "y")
		is_a_vampire = "pn"

	elsif (year_born != computed_age)
		if (garlic_bread == "n") && (insurance == "n")
			is_a_vampire = "cy"		
		elsif (garlic_bread == "n" || insurance == "n")
			is_a_vampire = "py"
		else
			is_a_vampire = "in"
		end

	elsif name == "Drake Cula" || name == "Tu Fang"
		is_a_vampire = "dy"

	else
		is_a_vampire = "in"
	end


	puts is_a_vampire

	case is_a_vampire
		when "pn"
		  puts "Probably not a vampire."
		when "py"
		  puts "Probably a vampire."
		when "cy"
		  puts "Almost certainly a vampire."
		when "dy"
		  puts "Definitely a vampire."
		else
		  puts "Inconclusive."
	end
	puts "---"
end

# ask how many employees will be processed, to loop that many times
puts "How many employees will be processed?"
number_of_employees = gets.chomp
counter = 0

# call the method the number of times required

while counter < number_of_employees.to_i
	vampire_questions
	counter += 1
end

