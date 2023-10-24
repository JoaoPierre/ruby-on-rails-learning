class RotationalCipher

  def self.rotate(string, key)
    new(string, key).rotate
  end

  private

  attr_reader :string, :key

  def initialize(string , key)
    @string = string
    @key = key
  end

  public

  def rotate
    result = ""
    string.chars.each do |char|
      base = char.ord < 91 ? 65 : 97
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotate_letter = ((char.ord + key - base) %26)+ base
        result << rotate_letter.chr
      else
        result << char
      end
    end
    result
  end
end
