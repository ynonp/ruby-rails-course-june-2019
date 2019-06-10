require "minitest/autorun"
require './classes/summer'

class TestSummer < Minitest::Test
  def test_can_add_stuff
    s = Summer.new
    t = Summer.new

    s.add(10)
    s.add(20, 30)
    t.add(22)

    assert_equal(s.val, 60)
    assert_equal(t.val, 22)
  end
end