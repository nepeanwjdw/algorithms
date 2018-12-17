require 'benchmark'

def create_array(length)
  arr = []
  length.times {arr.push(rand(100))}
  arr
end

# attempt 1
def reverse_array(arr)
  arr_2 = []
  i = 0
  while i < arr.length
    arr_2.unshift(arr[i])
    i += 1
  end
  return arr_2
end

# # to test method works
# p reverse_array([1,2,3,4,5])
# p reverse_array([1,2,3,4,5])
# p reverse_array([1,2,3,4,5])
# p reverse_array([1,2,3,4,5])
# p reverse_array([1,2,3,4,5])

# to run tests
i = 0
while i < 100000
  i += 5000
  arr = create_array(i)
  time = Benchmark.realtime do
    reverse_array(arr)
  end
  puts time*1000
end
