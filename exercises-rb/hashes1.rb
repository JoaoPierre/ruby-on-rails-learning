x = {name: "Bob", occupation: "web developer", hobbies: "painting"}
#  def keys (hash)
#  puts hash.keys
#  puts hash.values
# end
# #keys({name: 'Bob', occupation: 'web developer', hobbies: 'painting'})

# opposites = {positive: "negative", up: "down", right: "left"}

# opposites.each_key { |key| puts key }
# #opposites.each_value { |value| puts value }
# opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

# puts x.values.include?('Bob')

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |num| puts num if num > 5 }

h = {a: 1, b: 2, c: 3, d: 4, e: 5}
deleting = h.select { |k, v| v > 3.5 }
puts deleting
