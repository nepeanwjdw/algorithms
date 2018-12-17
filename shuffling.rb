require 'benchmark'

def create_array(length)
  arr = []
  length.times {arr.push(rand(100))}
  arr
end

# # attempt 1
# def shuffle_array(arr)
#   arr_i = (0...arr.length).to_a
#   arr_2 = []
#   i = 0
#   while i < arr.length
#     r = arr_i.sample
#     arr_2.push(arr[r])
#     arr_i.delete(r)
#     i += 1
#   end
#   return arr_2
# end

# attempt 2
def shuffle_array(arr)
  arr.sort_by { rand }
end

# # to test method works
# p shuffle_array([1,2,3,4,5])
# p shuffle_array([1,2,3,4,5])
# p shuffle_array([1,2,3,4,5])
# p shuffle_array([1,2,3,4,5])
# p shuffle_array([1,2,3,4,5])

# to run tests
i = 0
while i < 100000
  i += 5000
  arr = create_array(i)
  time = Benchmark.realtime do
    shuffle_array(arr)
  end
  puts time*1000
end
