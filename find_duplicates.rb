require 'benchmark'

def create_array(length)
  arr = []
  alphabet = ("a".."z").to_a
  length.times do
    name = ""
    5.times { name += alphabet[rand(26)] }
    arr << name
  end
  return arr
end

# attempt 1
def find_duplicates(arr)
  duplicates = []
  arr.each { duplicates <<  }
  arr
end

# to test method works
# p find_duplicates(["John", "John", "Clive", "Clive", "Ben"])

# to run tests
i = 0
while i < 100000
  i += 5000
  arr = create_array(i)
  time = Benchmark.realtime do
    find_duplicates(arr)
  end
  puts time*1000
end
