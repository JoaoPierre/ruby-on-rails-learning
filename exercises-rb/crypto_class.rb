class Crypto
  attr_reader :plaintext
  def initialize(plaintext)
    @plaintext = plaintext.downcase.scan(/[a-z1-9]/).join
  end

  def ciphertext
    plaintext
  end
end
