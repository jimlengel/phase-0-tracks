
class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		end

	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end

	def celebrate_birthday
		@celebrate_birthday = @age + 1
	end

	def get_mad_at=(reindeer_name)
		r_index = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.delete_at(r_index)
		@reindeer_ranking.push(reindeer_name)
		@get_mad_at = @reindeer_ranking
	end

	# def get_mad_at
	# 	@get_mad_at
	# end

	attr_reader :get_mad_at
	attr_accessor :age, :ethnicity, :gender

	# def age=(new_age)
	# 	@age = new_age
	# end

	# def age
	# 	@age
	# end

	# def ethnicity=(new_ethnicity)
	# 	@ethnicity = new_ethnicity
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender=(new_gender)
 #    @gender = new_gender
	# end

	# def gender
	# 	@gender
	# end

	
end


genders = ["male", "female", "gender fluid", "third gender", "male", "female", "gender fluid", "third gender", "female"]
ethnicities = ["African-American", "Cuban", "White", "Indian", "African-American", "Cuban", "White", "Indian", "Nepalese"]


# RELEASE 3
# Refactor your code with attr_reader and attr_accessor. Verify that your driver code still works.


# RELEASE 2

santanother = Santa.new(ethnicities[2], genders[2])

santanother.gender = "female"
santanother.age = 4
santanother.ethnicity = "Hopi"
# puts santanother.gender
santanother.get_mad_at = "Vixen"
puts santanother.get_mad_at
puts santanother.age
puts santanother.ethnicity



# RELEASE 1

# santas = []

# genders.length.times do |a|
# 	puts genders[a]
# 	puts ethnicities[a]
# 	santas << Santa.new(genders[a], ethnicities[a])
# 	puts "This santa's gender is #{genders[a]}."
# 	puts "This santa's ethnicity is #{ethnicities[a]}."
# 	# puts "This santa's age is #{santas.age}"
# 	puts "There are now #{a+1} Santa instances."
#   puts " "
# end




