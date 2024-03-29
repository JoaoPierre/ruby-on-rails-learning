puts "What is your first name"
first_name = gets.chomp
sleep(1)
puts "what is your last name?"
last_name = gets.chomp

full_name = first_name + " " + last_name

p "Your full name is #{full_name}"
p "Your full name reversed is #{full_name.reverse}"
p "Your name has #{full_name.sub(" ", "").length} letters"
