class Potluck
  attr_reader :data, :dishes

  def initialize(data)
    @data = data
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    category_dishes = @dishes.select do |dish|
      dish if dish.category == category
    end
  end

  def menu
    menu = Hash.new

    dishes_sorted = @dishes.sort_by do |dish|
      dish.name
    end

    appetizers = dishes_sorted.select do |dish|
      dish if dish.category == :appetizer
    end

    entres = dishes_sorted.select do |dish|
      dish if dish.category == :entre
    end

    desserts = dishes_sorted.select do |dish|
      dish if dish.category == :dessert
    end

    menu[:appetizers] = appetizers.map do |appetizer|
      appetizer.name
    end
    
    menu[:entres] = entres.map do |entre|
      entre.name
    end

    menu[:desserts] = desserts.map do |dessert|
      dessert.name
    end

    menu
  end

  def ratio(category)
    category_name = category.to_s
    menu = self.menu
    menu_count = menu[:appetizers].size + menu[:entres].size + menu[:desserts].size
    
    if category_name == "appetizer"
      dish_count = menu[:appetizers].size.to_f
    elsif category_name == "entres"
      dish_count = menu[:entres].size.to_f
    elsif category_name == "desserts"
      dish_count = menu[:desserts].size.to_f
    end

    ((dish_count/menu_count) * 100).round(1)
  end
end