class Street
  attr_reader :name

  def initialize(name)
    @name = name
    @buildings  = []
  end

  def add_building(building)
    @buildings << building
  end

  def buildings
    @buildings_sort = @buildings.sort_by do |building|
      building.building_name
    end
    @buildings_list = @buildings_sort.map do |building|
      building.building_name
    end
  end

  def number_of_available_apartments
    count = 0
    @buildings.each do |building|
      building.apartments.each do |apartment|
        count += 1 if apartment.is_rented? == false
      end
    end
    count
  end
end