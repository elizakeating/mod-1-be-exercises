suitcase = {
  "socks" => 4,
  "pants" => 1,
}

# 1. Add a key/value pair of shirts/3 to the suitcase.
suitcase["shirts"] = 3
# 2. Increase the value of shirts by 1.
suitcase["shirts"] += 1
# 3. Add a key/value pair of swimsuit/true to the suitcase.
suitcase["swimsuits"] = true

suitcase.delete("swimsuits")

suitcase["swimsuits"]
#should return nil

# suitcase = Hash.new(0) # this sets up the default as ZERO BUT creates a new hash, so much be done before!!

suitcase.default = 0 # set default for established hash

require 'pry';binding.pry