puts Time.new
puts Time.now

puts Time.new(2023)
birthday = Time.new(2023, 10, 8, 7, 45)
puts birthday

puts birthday.wday
puts birthday.mday
puts birthday.yday

start_of_year = Time.new(2024)
puts start_of_year

puts start_of_year + (60 * 60 * 24 * 30)
