fridge_items_1 = ["milk", "eggs", "eggs","eggs", "eggs",
                  "eggs", "eggs", "avocado", "avocado", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?
  # too many repeated items, no values
  # would need additional code to iterate over array
  # if array was out of order it would take absolutely forever to get our groceries (order matters when using an array)
  # things inside of an array can get a lil disorganized

# 2. What might be a more readable way to structure this?
  # in a hash
  # list of how many of each item we need