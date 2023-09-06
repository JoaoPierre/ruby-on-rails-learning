#def print_odd (min, max)
##  (min..max).each do |num|
 #   puts num if num.odd?
 ## end
#end

#print_odd(1,70)

def media(elem)
  soma = elem.sum
  puts "Sua média foi de #{soma.to_f/elem.size}"
end

media([3,7,8,12])