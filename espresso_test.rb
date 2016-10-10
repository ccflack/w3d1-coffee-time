require 'minitest/autorun'

require './human'
require './espresso'

class EspressoTest <MiniTest::Test
  def test_espresso_for_alertness
    dave = Human.new "Dave"
    sshot = Espresso.new "Single shot"
    dave.buy sshot
    dave.drink!
    assert(dave.alertness >= 0.4)
    assert sshot.empty?
  end
end
