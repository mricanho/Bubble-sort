# def bubble_sort(arr)
#   number_of_loops = arr.length - 1
#   swap = true
#   while swap
#     swap = false
#     number_of_loops.times do |x|
#       arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x] > arr[x + 1]
#       swap = true
#     end
#     number_of_loops -= 1
#   end
#   arr
# end
# puts bubble_sort([3, 2, 1, 85, 1, 58, 6, 4])


# Another way to slove it: 

def bubble_sort(arr)
  number_ofloop = arr.length - 1 #loop inside the index 
  for i in 0..number_ofloop  do # the first outside loop
    for j in 0...(number_ofloop) do # the inside loop
      if arr[j] > arr[j+1] 
        arr[j] , arr[j+1] = arr[j+1] , arr[j] #replacement of the elements
        end
    end
  end
 arr
end

puts bubble_sort([3, 2, 1, 85, 1, 58, 6, 4])


# The second one:
def bubble_sort_by(arr)
  number_ofloop = arr.length - 1 #loop inside the index not the length
  for i in 0..number_ofloop  do
      for j in 0...(number_ofloop) do
          if arr[j].length > arr[j+1].length #compare between lengths of the texts
             arr[j] , arr[j+1] = arr[j+1] , arr[j]
          end
      end
  end
arr 
end

compare = bubble_sort_by(["hi", "hello","hey"]) do |left,right|
  left.length - right.length
end
puts compare