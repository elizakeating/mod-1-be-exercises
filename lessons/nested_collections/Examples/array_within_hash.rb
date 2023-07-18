pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

# 1. what is pizza_toppings.count
p pizza_toppings.count # should equal 3?

# 2. what is pizza_toppings.values
p pizza_toppings.values # should equal [["green peppers", "jalapeno", "mushrooms"], ["pepperoni", "sausage", "sardines"], ["pineapple"]] .values RETURNS AN ARRAY OF VALUES!!

# 3. how can I access the element “pineapple”
p pizza_toppings[:fruit] # should print ["pineapple"]
p pizza_toppings[:fruit].first # would print only "pineapple" with no array

# 4. how can I add the element “olives” to the key “veggies”?
pizza_toppings[:veggies] << "olives"
p pizza_toppings
