# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

# animal_strings = animals.map do |animal|
#   animal.to_s
# end

# p animal_strings

# p animals.map { |animal| animal.to_s }

# 2. Return an array of animals with a length >= 4.

# large_animals = animals.find_all do |animal|
#   animal.length >= 4
# end

# p large_animals

# p animals.find_all { |animal| animal.length >=4 }

# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

# nested_animals.map do |nested|
#   p nested.map do |animal|
#     animal_string << animal.to_s
#   end
# end

# p animal_string

# animal_string = nested_animals.map do |animals|
#   animals.map do |animal|
#     animal.to_s
#   end
# end

# p animal_string.flatten

# animal_string = []

# nested_animals.each do |animals|
#   animals.each do |animal|
#     animal_string << animal.to_s
#   end
# end

# p animal_string

# 2. Return an unnested array of animals with length >= 4

# animal_four = nested_animals.map do |animals|
#   animals.find_all do |animal|
#     animal.length >= 4
#   end
# end

# p animal_four.flatten

# p nested_animals.flatten.find_all { |animal| animal.length >= 4 }

# animal_string = []

# nested_animals.each do |animals|
#   animals.each do |animal|
#     animal_string << animal if animal.length >= 4
#   end
# end

# p animal_string

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

animal_hash = {}
animal_hash = nested_animals.flatten.map { |animal| animal_hash[animal] = animal.length }
p animal_hash

# animal_hash = {}

# nested_animals.each do |group|
#   group.each do |animal|
#     animal_hash[animal]= animal.length
#   end
# end

# p animal_hash

# objects = nested_animals.flatten.each_with_object({}) do |animal, hash|
#   hash[animal] = animal.length
# end

# p objects