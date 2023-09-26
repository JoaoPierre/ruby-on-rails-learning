class Luhn
  def self.valid?(str)   
    stripped_str = str.gsub(" ","")

    return false if stripped_str.match?(/[^0-9\s]/) || stripped_str.length <= 1

    reversed_str = stripped_str.reverse.chars.map(&:to_i)    

    arr_double_digits = reversed_str.each_with_index.map do |elem, i|
      puts "o elem #{elem} tem index #{i}" #debbguing 
       i.odd? ? elem != 9 ?(elem * 2) % 9 : 9 : elem    
    end 
    
    sum = arr_double_digits.sum

    puts sum

    sum % 10 == 0 ? true : false 
  end
end


Luhn.valid?("091")
      
  