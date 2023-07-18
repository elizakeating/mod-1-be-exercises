pets = {:dog => {:name => "Chance", :weight => "45 pounds"},
        :cat => {:name => "Sassy", :weight => "15 pounds"}
       }

# 1. what is pets.count
p pets.count # should equal 2

# 2. what is pets.keys
p pets.keys # should print [:dog, :cat]

# 3. what is pets.values
p pets.values # should print [{:name => "Chance", :weight => "45 pounds"}, {:name => "Sassy", :weight => "15 pounds"}]

# 4. how can I access the element "15 pounds"
p pets[:cat][:weight] # should print "15 pounds"
p pets.dig(:cat, :weight) # should also print "15 pounds"

# 5. how can I add :age => 3 to the value of the key :dog
pets[:dog][:age] = 3
p pets