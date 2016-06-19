# Virus Predictor

# I (Jim Lengel) worked on this challenge with Jake Zappin.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# See below.

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One syntax is "String" => value
# The other is object: value

# What does require_relative do? How is it different from require?
# require_relative places the contents of the file that is in quotes into the ruby doc.
# require is different in that it places the contents of a file into the ruby doc, but it
# is not relative (it is not in a related directory).

# What are some ways to iterate through a hash?
# hash.each do |key, value|
# hash.map do |key, value |
# while, for, etc.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables it was sending to the method were class variables, which could be accessed directly
# from within the method. It was not necessary to inlude them when calling the method.

# What concept did you most solidify in this challenge?
# 1. Finding the value of a hash within a hash
# 2. Refactoring in general.


require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
  #This is the constructor method
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end

  def virus_effects
  # Calls the predicted_deaths and speed_of_spread methods to generate output
  predicted_deaths
  speed_of_spread
  end

  private

  def predicted_deaths
  # Predicted deaths is solely based on population density
  # Takes 3 variables and determines predicted deaths


  case @population_density
  when @population_density >= 200
  number_of_deaths = (@population * 0.4).floor
  when @population_density >= 150
  number_of_deaths = (@population * 0.3).floor
  when @population_density >= 100
  number_of_deaths = (@population * 0.2).floor
  when @population_density >= 50
  number_of_deaths = (@population * 0.1).floor
  else 
  number_of_deaths = (@population * 0.05).floor
  end

  print "#{@state} will lose #{number_of_deaths} people in this outbreak" 

  end

  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  # Takes a population density and determines the speed of spread of a virus
   
  speed = 0.0

    case @population_density
      when @population_density >= 200
        speed += 0.5
      when @population_density >= 150
        speed += 1
      when @population_density >= 100
        speed += 1.5
      when @population_density >= 50
        speed += 2
      else 
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

