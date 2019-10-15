class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    self.class.all << self
  end

  def cars
    Car.all.select { |car| car.mechanic == self }
  end

  def car_owners
    cars.map { |car| car.car_owner }.uniq
  end

  def car_owner_names
    car_owners.map { |car_owner| car_owner.name }
  end

  def self.all
    @@all
  end

  def self.find_all_by_specialty(specialty) #iterates through mechanic, returns the first mechanic with passed specialty
    self.all.select { |mechanic| mechanic.specialty == specialty }
  end

end
