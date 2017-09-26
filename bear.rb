class Bear

  def initialize(name)
    @name = name
    @tummy = []
  end

  def name
    return @name
  end

  def tummy
    return @tummy
  end

  def take_fish(fish, river)
    river.fishes.delete(fish)
    @tummy << fish
  end

  def roar
     "Rar! I'm a bear! I want fish."
  end

  def food_count
    @tummy.length
  end

end
