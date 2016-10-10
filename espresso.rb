require './coffee'

class Espresso < Coffee
  def initialize (name, sips=1, energy=0.4)
    super(name)
    self.sips = sips
    self.energy = energy
  end
end
