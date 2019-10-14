require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

carl = CarOwner.new("Carl")
rick = CarOwner.new("Rick")
mike = CarOwner.new("Mike")

car1 = Car.new("Audi","R8","Sports")
car2 = Car.new("Porsche","911","Sports")
car3 = Car.new("Tesla", "Model X", "Electric")
car4 = Car.new("Honda", "Accord", "Crossover")

mec1 = Mechanic.new("Red", "Electric")
mec2 = Mechanic.new("Blue", "Sports")
mec3 = Mechanic.new("Green", "Crossover")
mec4 = Mechanic.new("Brown", "Sports")

binding.pry
