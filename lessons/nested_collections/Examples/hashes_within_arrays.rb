food_feelings = [{:pizza => "tasty"}, {:calzone => "also tasty"}]

# 1. what is food_feelings.count
p food_feelings.count # should equal 2

# 2. what is food_feelings.first.count
p food_feelings.first.count # should equal 1

# 3. how can I access the value "also tasty"
p food_feelings.last[:calzone] # should print "also tasty"

# 4. how can I change the value “also tasty” to “super delicious”
food_feelings.last[:calzone] = "super delicious"
p food_feelings
