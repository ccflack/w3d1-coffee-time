require 'minitest/autorun'

require './human'
require './tea'

class TeaTest <MiniTest::Test
  def test_tea_for_alertness
    picard = Human.new "Picard"
    earl_gray = Tea.new "Earl Gray"
    2.times { picard.buy earl_gray }
    2.times { picard.drink! }
    assert picard.alertness >= 0.5
    assert earl_gray.empty?.inspect
  end
end
