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
def mechacoach_pairing(arr)
  arr << "coach" if arr.length.odd?
  pairs = []
  no_of_pairs = arr.length/2
  no_of_pairs.times { pairs << [] * no_of_pairs }
  i = 0
  until arr.empty? do
    i = 0 if i == no_of_pairs
    pairs[i] << arr.delete_at(rand(arr.length))
    i += 1
  end
  return pairs
end

# to test method works
p mechacoach_pairing(["John", "Susie", "Clive", "Stacy", "Ben", "April"])
# p mechacoach_pairing(["John", "Susie", "Clive", "Stacy", "Ben", "April"])
# p mechacoach_pairing(["John", "Susie", "Clive", "Stacy", "Ben"])
# p mechacoach_pairing(["John", "Susie", "Clive", "Stacy", "Ben"])

# # to run tests
# i = 0
# while i < 100000
#   i += 5000
#   arr = create_array(i)
#   time = Benchmark.realtime do
#     mechacoach_pairing(arr)
#   end
#   puts time*1000
# end
