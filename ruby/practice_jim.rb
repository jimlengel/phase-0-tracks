
class Animal
  # setter
  def noise=(noise)
  @noise = noise
  end

  # getter
  def noise
    @noise
  end

end

animal1 = Animal.new
animal1.noise = "Moo!"
puts animal1.noise

