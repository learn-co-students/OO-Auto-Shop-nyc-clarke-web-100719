class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic unless !self.suitable_mechanics.include?(mechanic)
    puts "Error! Mechanic does not have #{@classification} specialty. Pairing with random mechanic of that specialty"
    @mechanic = suitable_mechanics[rand(0...suitable_mechanics.length)] unless @mechanic

    self.class.all << self
  end

  def self.all
    @@all
  end

  def suitable_mechanics
    Mechanic.find_all_by_specialty(classification)
  end

  def self.all_classifications
    self.all.map { |car| car.classification }
  end

end
