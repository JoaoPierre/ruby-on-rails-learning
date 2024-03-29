users = [
  {username: "mashrur", password: "password1"},
  {username: "jack", password: "password2"},
  {username: "arya", password: "password3"},
  {username: "jonshow", password: "password4"},
  {username: "heisenberg", password: "password5"}
]

puts "Welcome to the authenticator"
20.times { print "-" }
puts "This program will take input from the user and compare password"

key_to_out = ""
number_iterations = 0

while key_to_out != "n"
  number_iterations += 1
  if number_iterations > 3
    puts "You have exceed the number of attempts"
    break
  end

  puts "Username:"
  user_username = gets.chomp
  puts "Password:"
  user_password = gets.chomp

  userHash = {username: user_username, password: user_password}

  if users.include?(userHash)
    puts userHash
  else
    puts "Credentials were not correct"
  end

  puts "Press n to quit or any other key to continue:"

  key_to_out = gets.chomp.downcase

end
