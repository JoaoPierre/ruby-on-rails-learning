class Isogram
  REGULAR_EXPRESSION = {only_letters: /[a-z]/}
  RE = REGULAR_EXPRESSION

  private_constant :RE

  def self.isogram?(input)
    new(input).isogram?
  end

  private

  attr_reader :input

  def initialize(input)
    @input = input.downcase.scan(RE[:only_letters]).join
  end

  public

  def isogram?
    input.bytes == input.bytes.uniq
  end
end
