def bubble_sort(arr)
  number_of_loops = arr.length - 1
  swap = true
  while swap
    swap = false
    number_of_loops.times do |x|
      arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x] > arr[x + 1]
      swap = true
    end
    number_of_loops -= 1
  end
  arr
end
puts bubble_sort([3, 2, 1, 85, 1, 58, 6, 4])
