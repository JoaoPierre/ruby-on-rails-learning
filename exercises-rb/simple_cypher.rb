class Cypher
  LOWERCASED_ALPHABET_LETTERS = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  RANGE_LOWERCASE_LETTERS = (0..25)
  RANDOM_KEY_LENGTH = 100
  LAL = LOWERCASED_ALPHABET_LETTERS
  RLL = RANGE_LOWERCASE_LETTERS
  RKL = RANDOM_KEY_LENGTH

  private_constant :LAL, :RLL, :RKL

  attr_reader :key, :number_key
  def initialize(key=nil)
    if key
      check_key(key)
      @key = key
      @number_key = LAL.index(key[0])
    else
      @key_letter = LAL[Random.rand(RLL)]
      @key = key_letter * 100
      @number_key = LAL.index(key[0])
    end
  end

  def encode(plaintext)
    plaintext.tr(LAL.join, alphabet_rotate)
  end

  def alphabet_rotate
    LAL.rotate(number_key).to_s
  end

  def check_key(key)
    return ArgumentError.new("Key only accepts lowercased letters") if key.match(/[A-Z]|\d|/) || key.empty?
  end
end
cypher = Cypher
