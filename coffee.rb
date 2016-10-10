class Coffee

attr_accessor :name,
              :amount

  def initialize(name, amount=1)
    self.name = name
    self.amount = amount
  end

  def full?
    amount == 1
  end

  def empty?
    amount <= 0.001
  end

end
