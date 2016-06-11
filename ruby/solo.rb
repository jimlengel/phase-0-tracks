# Release 1
# Create a Vehicle class
# Initialize with year, make, and model
# Create a method that requests the quantity
# Create a method that requests the color
# Create a method that takes the number of doors and the number of passengers and returns a convenience rating
#     for instance, 4 doors and 4 passengers is a high convenience (1 door per passenger) (4/4 = 1)
#     but 2 doors for 5 passengers is a lower convenience rating because they have to share doors (2/5 = 0.4)

# Release 2
# Create interface for program.
# Allow user to create multiple instances.
# Prompt user for data. 
# Store the class instances in an array.
# When the user is finished, loop through the array and display the attributes for every instance.

# -----

# Build class

class Vehicle
  attr_reader :year, :make, :model
  attr_accessor :color, :convenience_rating


    def initialize(year, make, model)
      puts " "
      @year = year
      @make = make
      @model = model
    end

  def convenience_rating_calc(passengers, doors)
    @convenience_rating = passengers.to_f/doors.to_f
    #puts "The convenience rating for the #{@make} #{@model} is #{@convenience_rating.to_f}."
  end

end

# ---

# Initialize the array

vehicle_info = []
puts "How many vehicles do you want to enter?"
vehicle_number = gets.chomp
vehicle_number.to_i.times do 
# Prompt for data

puts "What is the YEAR of the vehicle?"
year = gets.chomp
puts "What is the MAKE of the vehicle?"
make = gets.chomp
puts "What is the MODEL of the vehicle?"
model = gets.chomp
puts "What is the COLOR of the vehicle?"
color = gets.chomp
puts "How many doors on the vehicle?"
doors = gets.chomp
puts "How many passengers does the vehicle carry?"
passengers = gets.chomp

# create an instance and add data to instance
tesla = Vehicle.new(year, make, model)
tesla.convenience_rating_calc(passengers, doors)
tesla.color = color

# display data (for Release 1)
# puts "This auto is #{tesla.color}."
# puts tesla.year
# puts tesla.make
# puts tesla.model

# build array
vehicle_info << tesla

end

# display array
puts vehicle_info

# puts vehicle_info[0].year

vehicle_info.each do |vehicle| 
  puts " "
  puts "The year is: #{vehicle.year}."
  puts "The make is: #{vehicle.make}."
  puts "The model is: #{vehicle.model}."
  puts "The color is: #{vehicle.color}."
  puts "The convenience_rating is: #{vehicle.convenience_rating}."
end


# FOR RELEASE 1:
# tesla = Vehicle.new(2016, "Tesla", "Model S")
# tesla.color = 'white'
# tesla.convenience_rating_calc(5,4)
# p tesla.convenience_rating
# puts "This auto is #{tesla.color}."
# puts tesla.year
# puts tesla.make
# puts tesla.model
