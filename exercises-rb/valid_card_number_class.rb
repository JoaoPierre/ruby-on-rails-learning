class Luhn
  def self.valid?(identification)
    new(identification).valid?
  end
  def valid?
   return false if id_is_short? || non_numerics?
   check_sum.equal?(0)
  end
  private
  attr_reader :identification
  def id_is_short?
    identification.length <= 1
  end
  def non_numerics?
    identification.to_s.match?(/[^0-9\s]/)
  end
  def initialize(identification)
    @identification = identification.gsub(" ","")
  end
  def digits_doubled
    identification.reverse.chars.map(&:to_i).each_with_index.map do |digit, i|
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
end


Luhn.valid?("091")
      
  