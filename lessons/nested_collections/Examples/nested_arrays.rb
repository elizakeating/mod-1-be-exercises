numbers = [[1, 2, 3], [4, 5, 6]]

# 1. what is numbers.count
p numbers.count #should equal 2

# 2. what is numbers.first.count
p numbers.first.count #should equal 3

# 3. how can I access the element 5

p numbers.last[1] #should print 5

# 4. how can I add [7,8,9] to the numbers array
numbers << [7, 8, 9]
p numbers

# 5. What element does numbers[0] return?
p numbers[0] #should return [1, 2, 3]
