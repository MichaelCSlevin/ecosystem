class River

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def name()
    return @name
  end

  def fishes()
    return @fishes
  end

  def number_of_fishes
   return @fishes.length
  end


end
