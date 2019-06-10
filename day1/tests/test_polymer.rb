require "minitest/autorun"
require './classes/polymer'

class TestPolymer < Minitest::Test
  def test_polymer_to_s
    p = Polymer.new('abcAbC')
    assert_equal('abcAbC', p.to_s)
  end

  def test_sample_polymer_works
    p = Polymer.new('aA')
    p.collapse!

    assert_equal('', p.to_s)
  end

  def test_longer_polymer
    p = Polymer.new('dabAcCaCBAcCcaDA')
    p.collapse!

    assert_equal('dabCBAcaDA', p.to_s)
  end

  def test_unit_count
    p = Polymer.new('dabAcCaCBAcCcaDA')
    p.collapse!

    assert_equal(10, p.units_count)
  end

end