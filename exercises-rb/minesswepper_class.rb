class Minesweeper
  def self.annotate(input)
    new(input).annotate
  end

  attr_accessor :input

  def initialize input
    @input = input
  end

  def annotate
    input.map_with_index do |line, row_index|
      line.chars.map_with_index do |elem, column|
      end
    end
  end
end
Minesweeper.annotate(["   ", " * ", "   "])
