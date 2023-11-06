class IsbnVerifier
  X_VALUE = "10"

  REGULAR_EXPRESSION = {valid_characters: /\d|[X]/,}
  RE = REGULAR_EXPRESSION
  private_constant :RE

  def self.valid?(identification)
    new(identification).valid?
  end

  def initialize(identification)
    @identification = identification.scan(RE[:valid_characters])
  end

  attr_reader :identification

  def valid?
   return false if length_issue? || x_position_restriction
   check_sum.equal?(0)
  end

  def have_x?
    if identification.include?("X")
      identification.pop
      p identification.push(X_VALUE)
    else
      identification
    end

  end

  def x_position_restriction
    identification.include?("X") ?
      identification.last != "X" ?
        true : false
      : false
  end

  def length_issue?
    identification.length != 10
  end

  def isbn_sum
    sum = 0
    have_x?.map(&:to_i).reverse.each_with_index{|num , index| sum += num * (index + 1)}
    sum
  end

  def check_sum
    isbn_sum % 11
  end
end

IsbnVerifier.valid?("3-598-21507-X")
