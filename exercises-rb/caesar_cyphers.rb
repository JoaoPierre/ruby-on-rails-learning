def caesar_cipher(str, shift)
  result = ""

  str.each.char do |char| 
    base = char.ord < 91 ? 65 : 97
    if char.ord.between(65,91) || char.ord.between(97,122)
      rotation = (((char.ord-base)+shift)%26) + base  
      result += rotation.char()
    else 
      result += char 
    end 
  end                                                                                      
  result
end 