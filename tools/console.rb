require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("jeff")
co2 = CarOwner.new("jack")


m1 = Mechanic.new("kate", "vintage")
m2 = Mechanic.new("josie", "modern")
m3 = Mechanic.new("sara", "vintage")

# make, model, classification, owner, mechanic

car1 = Car.new("honda", "van", "modern", co1, m2)
car2 = Car.new("mercedes", "convertible", "vintage", co2, m1)
car3 = Car.new("subaru", "sedan", "modern", co1, m2)
car4 = Car.new("volkswagon", "van", "vintage", co1, m1)

binding.pry
