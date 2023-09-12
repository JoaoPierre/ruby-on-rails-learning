array1 = [1,2,3,4,5,6,7]
arr_change = array1.map {|num| num + 2 }

p array1
p arr_change



array1 = [1,2,3,4,5,6,7]
arr_change = []
array1.each do |num|
   arr_change.push(num+2)
end 


p array1
p arr_change

