# Create a Vehicle class
# Initialize with year, make, and model
# Create a method that requests the quantity
# Create a method that requests the color
# Create a method that takes the number of doors and the number of passengers and returns a convenience rating
#     for instance, 4 doors and 4 passengers is a high convenience (1 door per passenger) (4/4 = 1)
#     but 2 doors for 5 passengers is a lower convenience rating because they have to share doors (2/5 = 0.4)

class Vehicle
  attr_reader :year, :make, :model, :color
  attr_accessor :convenience_rating

    def initialize(year, make, model)
        @year = year
    @make = make
    @model = model
    end

  def color=(color)
    @color
  end

  def convenience_rating=(passengers, doors)
    @convenience_rating = doors/passengers
    puts "The convenience rating is #{@convenience_rating}."
  end

end

tesla = Vehicle.new(2016, "Tesla", "Model S")
tesla.color = "white"
tesla.convenience_rating

puts tesla.color
puts tesla.year
puts tesla.make
puts tesla.model