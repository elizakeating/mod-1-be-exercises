class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty? # might get confusing have the two empty?
    # @candies.count == 0 ? true : false
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

    # @candies.any { |candy| candy.type == name }
  end
end