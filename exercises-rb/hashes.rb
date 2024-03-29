contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

keys_inside = [:email, :adress, :number]

puts contacts.each_with_index { |(name, hash), i| keys_inside.each { |key| hash[key] = contact_data[i] } }
