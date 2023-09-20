def bubble_sort(arr)
  sorted = []
  arr.each_with_index do |elem ,i|
    if elem < arr[i+1]
      sorted.push(elem)
    elsif elem > arr[i-1]  
      sorted.push(arr[i-1])
    else 
      sorted.push(elem)
    end
  end
  puts sorted

end

bubble_sort([3,1,5,7,2,4,6,5,7])