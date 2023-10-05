class Luhn
  REGULAR_EXPRESSION = {
    any_non_numerics?: /[^0-9\s]/,
    digit: /\d/}
  private

  attr_reader :identification
  def initialize(identification)
    @identification = identification.reverse
  end
  def id_is_short?
    digits.length <= 1
  end
  def non_numerics?
    identification.match?(REGULAR_EXPRESSION[:any_non_numerics?])
  end
  def digits
    identification.scan(REGULAR_EXPRESSION[:digit]).map(&:to_i)
  end
  def digits_doubled
    digits.each_with_index.map do |digit, i|
        i.odd? ?
          digit.equal?(9)?
            9 :
            digit * 2 % 9:
        digit
    end
  end
  def sum_of_digits
    digits_doubled.sum
  end
  def check_sum
    sum_of_digits % 10
  end
  public
  def self.valid?(identification)
    new(identification).valid?
  end
  def valid?
   return false if id_is_short? || non_numerics?
   check_sum.equal?(0)
  end
end
