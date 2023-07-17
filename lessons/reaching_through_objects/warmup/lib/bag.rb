class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(name)
    candy_type = @candies.map do |candy|
      candy.type
    end
    candy_type.include?(name)
  end
end