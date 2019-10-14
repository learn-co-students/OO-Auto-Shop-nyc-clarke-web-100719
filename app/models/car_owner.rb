class CarOwner

  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def get_car(car)
    car.assign_owner(self)
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanics 
    cars.map{|car| car.mechanic}.uniq
  end

  def self.cars_own_by(owner)
    all.find{|owner_in| owner_in == owner}.cars
  end

  def self.average_amount_cars_owned
    temp = all.map{|owner| owner.cars.count}.sum
    temp / all.length.to_f
  end

end
