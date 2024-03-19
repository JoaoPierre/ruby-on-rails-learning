dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

line = "-" * 25

def get_city_names(hash)
  hash.keys.each  {|city| puts "#{city}"}
end

def get_area_code(hash, key)
  puts "The area code for #{key} is #{hash[key]}"
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  key_to_leave = gets.chomp.downcase
  break if key_to_leave != "y"

  puts "which city do you want the area code?"

  get_city_names(dial_book)

  puts "Enter your selection:"

  city_name = gets.chomp.downcase
  get_area_code(dial_book, city_name)
end
