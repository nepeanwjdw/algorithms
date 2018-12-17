require 'benchmark'

def create_array(length)
  arr = []
  length.times {arr.push(rand(100))}
  arr
end

i = 0
while i < 100000
  i += 5000
  arr = create_array(i)
  time = Benchmark.realtime do
    arr.last
  end
  puts time*1000
end

# i = 0
# while i < 100000
#   i += 5000
#   arr = create_array(i)
#   time = Benchmark.realtime do
#     arr.reverse
#   end
#   puts time*1000
# end

# i = 0
# while i < 100000
#   i += 5000
#   arr = create_array(i)
#   time = Benchmark.realtime do
#     arr.shuffle
#   end
#   puts time*1000
# end
#
# i = 0
# while i < 100000
#   i += 5000
#   arr = create_array(i)
#   time = Benchmark.realtime do
#     arr.sort
#   end
#   puts time*1000
# end
