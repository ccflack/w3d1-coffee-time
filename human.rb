require './espresso'
require './coffee'

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
    self.alertness += drink.energy
    drink.drink!
  end

  def has_coffee?
    drink
  end

  def needs_coffee?
    drink == nil ||
    drink.sips <= 0
  end

end
