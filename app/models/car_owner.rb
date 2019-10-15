class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def cars
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    cars.map { |car| car.mechanic }
  end

  def self.all
    @@all
  end

  def self.average_cars_owned
    self.all.sum(&:car_owner.cars.count) / self.all.count
  end

end
