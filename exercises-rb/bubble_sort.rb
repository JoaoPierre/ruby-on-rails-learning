def bubble_sort(arr)
  sorted = false
  i = 1
  for i in (1..arr.length-1)
    if arr[i] < arr[i-1]
      arr[i], arr[i-1] = arr[i-1], arr[i]
    end
  end
  p arr
end

bubble_sort([3,1,5,7,2,4,6,5,7])