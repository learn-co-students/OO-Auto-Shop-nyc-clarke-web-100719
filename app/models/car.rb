class Car
  
  attr_reader :make, :model, :owner, :mechanic, :classification
  @@all = []

  def self.all
    @@all
  end

  def initialize(make, model, classification)
    @make = make #brand
    @model = model 
    @classification = classification

    self.class.all << self
  end

  def assign_owner(owner)
      @owner = owner
  end

  def assign_mechanic(mechanic)
    return @mechanic = mechanic if mechanic.specialty == self.classification
    puts "This mechanic isn't apt to handle this car classification: #{self.classification}" if !@mechanic
  end

  def self.all_classifications
    all.map{|car| car.classification}.uniq
  end

  def apt_mechanics
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end
