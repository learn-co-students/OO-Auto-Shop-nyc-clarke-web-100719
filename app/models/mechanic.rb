class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    self.class.all << self
  end

  def providing_services_to_cars
    Car.all.select{|car| car.mechanic == self}
  end

  def clients
    providing_services_to_cars.map{|car| car.owner}.uniq
  end

  def clients_name
    clients.map{|client| client.name}
  end
  
end
