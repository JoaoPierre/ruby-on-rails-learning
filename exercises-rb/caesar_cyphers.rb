class RotationalCipher
  DOWNCASE_LETTERS = ("a".."z")

  UPCASE_LETTERS = ("A".."Z")

  KEY_ASCII_VALUES =
    {"a" => "a".ord,
     "z" => "z".ord,
     "A" => "A".ord,
     "Z" => "Z".ord}

  KAV = KEY_ASCII_VALUES

  private_constant :KAV

  def self.rotate(string, key)
    new(string, key).rotate
  end

  private

  attr_reader :string, :key

  def initialize(string, key)
    @string = string
    @key = key
  end

  public

  def rotate
    result = ""
    string.each_char do |char|
      character_value = char.ord
      base = (character_value <= KAV["z"]) ? KAV["a"] : KAV["A"]
      if DOWNCASE_LETTERS.cover?(char) || UPCASE_LETTERS.cover?(char)
        rotate_letter = ((character_value + key - base) % 26) + base
        result << rotate_letter.chr
      else
        result << char
      end
    end
    result
  end
end

RotationalCipher.rotate("OMG", 5)
