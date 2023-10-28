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

  def chars_to_num
    break_input.map(&:to_i)  #num becomes num, letters becomes 0
  end

  def break_input
    input.join.scan(/[\d]+|[\D]/)
  end

  public

  def encode
    count = 1
    output = ""
    input.each_with_index do |char , index|
      if char != input[index +1]
        count > 1 ? output << count.to_s : output
        output << char
        count = 1
      else
        count += 1
      end
    end
    output
  end

  def decode
    output = ""
    count = 1
    chars_to_num.each_with_index do |num , index|
      if num == 0
        count.times do
          output << break_input[index]
          count = 1
        end
      else
        count = num
      end
    end
    output
  end
end
