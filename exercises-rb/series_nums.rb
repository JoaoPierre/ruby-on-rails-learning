class Series
  def initialize(number) #number should be be a string of number ("number")
    @number = number
  end
  attr_reader :number
  def slices (length) #length should be a number
    raise ArgumentError unless length <= number.size && length.positive?
    possibles = []
    i = 0
    while i + length <= number.size
      possibles.push(number[i...i+length])
      i += 1
    end
    possibles
  end
end
