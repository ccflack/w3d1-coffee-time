class Coffee

attr_accessor :drink_name,
              :current_amount

  def initialize(drink_name, amount=1.0)
    self.drink_name = drink_name
    self.current_amount = amount
  end

  def full?
    self.current_amount == 1.0
  end

  def empty?
    self.current_amount <= 0.1
  end

end
