require 'benchmark'

def create_array(length)
  arr = []
  length.times {arr.push(rand(100))}
  arr
end

def insertion_sort(arr)
  i = 1
  while i < arr.length
    j = i - 1
    compare_two_elements(arr, i, j)
    i += 1
  end
  arr
end

def compare_two_elements(arr, i, j)
  until j == -1
    if arr[i] < arr[j]
      arr[i], arr[j] = arr[j], arr[i]
      i -= 1
      j -= 1
    else
      break
    end
  end
end

# to test method works
p insertion_sort([5, 4, 3, 2, 9, 1, 2])

# # to run tests
# i = 0
# while i < 100000
#   i += 5000
#   arr = create_array(i)
#   time = Benchmark.realtime do
#     insertion_sort(arr)
#   end
#   puts time*1000
# end
