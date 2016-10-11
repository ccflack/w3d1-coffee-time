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

  # Best guess at solution to make the tea_test.rb pass
  #
  # def buy(drink_name)
  #   if drink == 0
  #     self.drink = drink_name
  #   else
  #     self.drink = drink_name
  #     self.drink.sips = (drink.sips).reduce(0) {|sum, hash| sum + hash[sips]}
  #     self.drink.energy = (drink.energy).reduce(0) {|sum, hash| sum + hash[energy]}
  #   end
  # end

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
