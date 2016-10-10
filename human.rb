class Human
  attr_accessor :name,
                :alertness,
                :drink_left

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
    self.drink_left = 0
  end

  def buy(drink)
    drink = Coffee.new(drink, num_purchased=1)
    self.drink_left = num_purchased * 1
  end

  def drink!
    self.drink_left -= 0.33
    self.alertness += 0.33
  end

  def has_coffee?
    drink_left > 0
  end

end
  
