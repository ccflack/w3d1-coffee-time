class Human
  attr_accessor :name,
                :alertness,
                :drink

  def initialize(name, alertness=0, drink=0)
    self.name = name
    self.alertness = alertness
  end

  def buy(drink_name)
    self.drink = drink_name
  end

  def drink!
    drink.current_amount -= 0.33
    self.alertness += 0.33
  end

  def has_coffee?
    drink
  end

  def needs_coffee?
    drink == nil ||
    drink.current_amount <= 0
  end

end
