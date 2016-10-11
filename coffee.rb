class Coffee

attr_accessor :drink_name,
              :sips,
              :energy

  def initialize(drink_name, sips=3, energy=0.33)
    self.drink_name = drink_name
    self.sips = sips
    self.energy = energy
  end

  def drink!
      self.sips -= 1
  end

  def full?
    self.sips == 3.0
  end

  def empty?
    self.sips == 0
  end

end
