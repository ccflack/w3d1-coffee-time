require './coffee'

class Tea < Coffee
  def initialize (name, sips=5, energy=0.25, cups)
    super(name)
    self.sips = sips
    self.energy = energy
    self.cups = cups
  end
end
