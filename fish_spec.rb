require 'minitest/autorun'
require 'minitest/rg'

require_relative './river'
require_relative './bear'
require_relative './fish'

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Muddy Mudskipper")
  end

  def test_name
    assert_equal("Muddy Mudskipper",
                 @fish1.name("Muddy Mudskipper"))
  end

end
