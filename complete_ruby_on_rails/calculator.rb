puts "This is a simple calculator!"

20.times { print "-"}
puts "Enter your first number:"
num_1 = gets.chomp
puts "Enter your second number:"
num_2 = gets.chomp

20.times { print "-"}

puts "Your first number(#{num_1.to_i}) added by your second number (#{num_2}) is #{num_1.to_i + num_2.to_i}"

20.times { print "-"}

puts "Your first number(#{num_1.to_i}) subtracted by your second number (#{num_2}) is #{num_1.to_i - num_2.to_i}"

20.times { print "-"}

puts "Your first number(#{num_1.to_i}) multyplied by your second number (#{num_2}) is #{num_1.to_i * num_2.to_i}"


20.times { print "-"}

puts "Your first number(#{num_1.to_i}) divided by your second number (#{num_2}) is #{num_1.to_f / num_2.to_f}"
