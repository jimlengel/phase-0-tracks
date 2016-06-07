# SPECIES ---
# Canus domesticus

# CHARACTERISTICS ---
# Eyelash length: long
# Friendly: yes
# Eye count: 2
# Name: varies
# Color: brown

# BEHAVIOR ---
# Run
# Jump
# Fetch
# Bark

class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

end

babs = Puppy.new
babs.fetch('ham')

