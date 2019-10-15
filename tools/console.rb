require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Jimmy")
co2 = CarOwner.new("Johnny")
co3 = CarOwner.new("Jacky")

m1 = Mechanic.new("Jonathan", "antique")
m2 = Mechanic.new('Michael', "beamer")
m3 = Mechanic.new("Jenkins", "clunker")
m4 = Mechanic.new('Jackson', 'clunker')


c1 = Car.new("Ford", "Alexa", "clunker", co1, m3 )
c2 = Car.new("Dodge", "Impaler", "antique", co2, m1)
c3 = Car.new("GM", "Buick", "clunker", co1, m3)

binding.pry
