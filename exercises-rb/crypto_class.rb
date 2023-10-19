class Crypto
  REGULAR_EXPRESSION = {alpha_numeric: /[a-z1-9]/}
  RE = REGULAR_EXPRESSION
  private constant :RE
  attr_reader :plaintext
  def initialize(plaintext)
    @plaintext = plaintext.downcase.scan(:RE).join
  end

  def ciphertext
    plaintext
  end
end
