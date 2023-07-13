class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    yelling = @patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    if @patrons.size > capacity
      true
    else
      false
    end
  end

  def kick_out
    while @patrons.size > capacity
      @patrons.pop
    end
  end
end
