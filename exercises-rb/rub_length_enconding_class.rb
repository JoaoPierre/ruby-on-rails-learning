class RunLengthEncoding

  def self.encode(input)
    new(input).encode
  end

  def self.decode(input)
    new(input).decode
  end

  private

  attr_reader :input

  def initialize(input)
    @input = input
  end

  public

  def encode
   input.gsub(/(.)\1+/){|match| "#{match.length}#{match[0]}"}
  end

  def decode
    input.gsub(/\d+\D/){|match| match[-1] * match.to_i}
  end
end
