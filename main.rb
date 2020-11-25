
def bubble_sort(arr)
  number_ofloop = arr.length - 1 
  for i in 0..number_ofloop  do
   for j in 0...(number_ofloop) do
    arr[j] , arr[j+1] = arr[j+1] , arr[j] if arr[j] > arr[j+1] 
   end
  end
 arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])

# The second:

def bubble_sort_by(arr)
  number_ofloop = arr.length - 1 #loop inside the index not the length
  for i in 0..number_ofloop  do
    for j in 0...(number_ofloop) do
      if yield(arr[j] , arr[j+1]).positive?
        arr[j] , arr[j+1] = arr[j+1] , arr[j] 
      end
    end
  end
arr 
end