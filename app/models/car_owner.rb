class CarOwner
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.owner == self }
  end

  def mechanics
    cars.map { |car| car.mechanic }.uniq
  end

  def self.average_car_number
    car_array = Car.all.map { |car| car }
    avg = (car_array.length / @@all.length.to_f)
  end


end
