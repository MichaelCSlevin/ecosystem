# A bear should have a name e.g. "Yogi"
# - A bear should have an empty tummy ( maybe an array )
#
# - A bear should be able to take a fish from the river
# - A river should lose a fish when a bear takes a fish

require 'minitest/autorun'
require 'minitest/rg'

require_relative './river'
require_relative './bear'
require_relative './fish'

class TestBear < MiniTest::Test


  def setup()
    @bear = Bear.new("Grills")

    @school = [
      @fish1 = Fish.new("Nemo"),
      @fish2 = Fish.new("Blinky"),
      @fish3 = Fish.new("Mrs. Puff"),
      @fish4 = Fish.new("James Pond"),
      @fish5 = Fish.new("Klaus")
    ]

    @river = River.new("Cuomo", @school)
  end

  def test_name
    assert_equal('Grills', @bear.name)
  end

  def test_take_fish
    @bear.take_fish(@fish1, @river)
    assert_equal([@fish1], @bear.tummy)
    assert_equal(4, @river.number_of_fishes)
  end

  def test_roar
      assert_equal("Rar! I'm a bear! I want fish.", @bear.roar())
  end

  def test_food_count
    assert_equal(0, @bear.food_count())
    @bear.take_fish(@fish1, @river)
    assert_equal(1, @bear.food_count())
    @bear.take_fish(@fish3, @river)
    assert_equal(2, @bear.food_count())
  end

  

end
