require 'minitest/autorun'
require 'minitest/rg'

require_relative './river'
require_relative './bear'
require_relative './fish'

class TestRiver < MiniTest::Test



  def setup
    school = [
      @fish1 = Fish.new("Nemo"),
      @fish2 = Fish.new("Blinky"),
      @fish3 = Fish.new("Mrs. Puff"),
      @fish4 = Fish.new("James Pond"),
      @fish5 = Fish.new("Klaus")
    ]

    @river = River.new("Phoenix", school)


  end

  def test_name
    assert_equal("Phoenix", @river.name())
  end



  def test_river_has_fish
    assert_equal(5, @river.number_of_fishes)
  end

end





#- A river could have a fish_count method
