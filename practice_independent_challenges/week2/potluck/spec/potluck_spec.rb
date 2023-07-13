require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it "exists" do
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_a(Potluck)
  end

  it "has readable attributes" do
    potluck = Potluck.new("7-13-18")

    expect(potluck.data).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
  end

  it "adds dishes" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
  end

  it "counts dishes" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes.length).to eq(2)
  end

  it "gets all from category" do
    potluck = Potluck.new("7-13-18")
    expect(potluck).to be_a(Potluck)

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    expect(couscous_salad).to be_a(Dish)

    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    expect(summer_pizza).to be_a(Dish)

    roast_pork = Dish.new("Roast Pork", :entre)
    expect(roast_pork).to be_a(Dish)

    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    expect(cocktail_meatballs).to be_a(Dish)

    candy_salad = Dish.new("Candy Salad", :dessert)
    expect(candy_salad).to be_a(Dish)

    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])

    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])

    potluck.add_dish(roast_pork)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])

    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])

    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])

    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
    expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
    expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
  end

  it "returns menu" do
    potluck = Potluck.new("7-13-18")
    expect(potluck).to be_a(Potluck)
    
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    expect(couscous_salad).to be_a(Dish)
    
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    expect(summer_pizza).to be_a(Dish)
    
    roast_pork = Dish.new("Roast Pork", :entre)
    expect(roast_pork).to be_a(Dish)
    
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    expect(cocktail_meatballs).to be_a(Dish)
    
    candy_salad = Dish.new("Candy Salad", :dessert)
    expect(candy_salad).to be_a(Dish)
    
    bean_dip = Dish.new("Bean Dip", :appetizer)
    expect(bean_dip).to be_a(Dish)
    
    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])
    
    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])
    
    potluck.add_dish(roast_pork)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])
    
    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])
    
    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])
    
    potluck.add_dish(bean_dip)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad, bean_dip])
        
    menu_hash = {appetizers: ["Bean Dip", "Couscous Salad", "Summer Pizza"], entres: ["Cocktail Meatballs", "Roast Pork"], desserts: ["Candy Salad"]}
    expect(potluck.menu).to eq(menu_hash) 
  end

  it "returns ratio" do
    potluck = Potluck.new("7-13-18")
    expect(potluck).to be_a(Potluck)
    
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    expect(couscous_salad).to be_a(Dish)
    
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    expect(summer_pizza).to be_a(Dish)
    
    roast_pork = Dish.new("Roast Pork", :entre)
    expect(roast_pork).to be_a(Dish)
    
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    expect(cocktail_meatballs).to be_a(Dish)
    
    candy_salad = Dish.new("Candy Salad", :dessert)
    expect(candy_salad).to be_a(Dish)
    
    bean_dip = Dish.new("Bean Dip", :appetizer)
    expect(bean_dip).to be_a(Dish)
    
    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])
    
    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])
    
    potluck.add_dish(roast_pork)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])
    
    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])
    
    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])
    
    potluck.add_dish(bean_dip)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad, bean_dip])
        
    menu_hash = {appetizers: ["Bean Dip", "Couscous Salad", "Summer Pizza"], entres: ["Cocktail Meatballs", "Roast Pork"], desserts: ["Candy Salad"]}
    expect(potluck.menu).to eq(menu_hash) 

    expect(potluck.ratio(:appetizer)).to eq(50.0)
  end
end