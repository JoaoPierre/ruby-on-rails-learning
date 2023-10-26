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
    @input = input.chars
  end

  public

  def encode
    count = 1
    encode = ""
    input.each_with_index do |char , index|
      if char != input[index +1]
        count > 1 ? encode << count.to_s : encode
        encode << char
        count = 1
      else
        count += 1
      end
    end
    encode
  end

  def decode
    p input.join.scan(/[1-9]+[a-z]||[a-z]/i)
  end
end

RunLengthEncoding.decode("15b3Ck")
