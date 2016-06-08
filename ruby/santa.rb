
class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end

	
	
end


# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

santas = []
genders = ["male", "female", "gender fluid", "third gender"]
ethnicities = ["African-American", "Cuban", "White", "Indian"]

genders.length.times do |a|
	puts genders[a]
	puts ethnicities[a]
	santas << Santa.new(genders[a], ethnicities[a])
	puts "This santa's gender is #{genders[a]}."
	puts "This santa's ethnicity is #{ethnicities[a]}."
	puts "There are now #{a+1} Santa instances."
  puts " "

end

