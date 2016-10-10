require './coffee'

class Tea < Coffee
  attr_accessor :cups
  def initialize (name, sips=5, energy=0.25, cups=1)
    super(name)
    self.sips = sips
    self.energy = energy
    self.cups = cups
  end
end
