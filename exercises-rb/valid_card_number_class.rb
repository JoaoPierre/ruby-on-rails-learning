class Luhn
  def self.valid?(identification)  #IDENTIFICATION SHOULD RECEIVE A STRING OF NUMBERS
    stripped_identification = identification.gsub(" ","")
   
    return false if stripped_identification.match?(/[^0-9]/) || stripped_identification.length <= 1
   
    reversed_identification = stripped_identification.reverse.chars.map(&:to_i)
   
    reversed_identification.each_with_index.map do |digit, i|
        i.odd? ?
          digit.equal?(9)?
            9 :
            digit * 2 % 9:
        digit
    end
      .sum % 10 == 0
 
  end
end


Luhn.valid?("091")
      
  