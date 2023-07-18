class TrickOrTreater
  attr_reader :dressed_up_as,
              :bag

  def initialize(dressed_up_as)
    @dressed_up_as = dressed_up_as.style
    @bag = Bag.new
  end

  def has_candy?
    bag.candies.empty? ? false : true
  end

  def candy_count
    bag.candies.count
  end

  def eat
    bag.candies.pop
  end
end