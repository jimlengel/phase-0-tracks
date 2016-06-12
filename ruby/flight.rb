module Flight
	def take_off(altitude)
    puts "Taking off and landing until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Bird.new
plane.take_off(30000)
