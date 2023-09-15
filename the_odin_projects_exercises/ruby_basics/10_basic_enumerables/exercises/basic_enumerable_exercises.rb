def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
    inventory_list.each{|key, value| puts "#{key}, quantity: #{value}"}

end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index{|elem , i| puts "Guess ##{i+1} is #{elem}"}
end


def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  arr = numbers.map {|elem| elem.abs}
  
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select{|key, value| value < 4}
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  hash = word_list.reduce(Hash.new(0)) do |acum , word_list_elem|
    acum[word_list_elem] += word_list_elem.length
    acum
  end
   hash
end

display_current_inventory({ apples: 1, bananas: 3, oranges: 7 })
display_guess_order(['cookies', 'cake', 'ice cream'])
find_absolute_values([0, -7, 14, -21])
find_word_lengths(['cat', 'horse', 'rabbit', 'deer'])
p = -1.0/0
puts p 