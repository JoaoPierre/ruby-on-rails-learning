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

  def initialize(identification)
    @identification = identification
  end

  def reversed_identification
    identification.gsub(" ","").reverse.chars.map(&:to_i)
  end

  def get_digits_doubled
    reversed_identification.each_with_index.map do |digit, i|
        i.odd? ?
          digit.equal?(9)?
            9 :
            digit * 2 % 9:
        digit
    end
  end

  def sum_of_digits
    get_digits_doubled.sum
  end

  def check_sum
    sum_of_digits % 10
  end
  
  def id_is_short?
    reversed_identification.length <= 1
  end

  def non_numerics?
    identification.match?(/[^0-9\s]/)
  end
end


Luhn.valid?("091")
      
  