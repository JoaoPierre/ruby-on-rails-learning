class PerfectNumber
  def initialize(number)
    raise RuntimeError if number < 0
    @number = number
  end

  attr_reader :number

  def self.classify(number)
    new(number).classify
  end

  def classify
    if number == sum_multiples
      "perfect"
    elsif number < sum_multiples
      "abundant"
    elsif number > sum_multiples
      "deficient"
    end
  end

  def number_multiples
    if number.even?
      (1..number / 2).to_a.select { |num| number % num == 0 }
    else
      (1..(number - 1) / 2).to_a.select { |num| number % num == 0 }
    end
  end

  def sum_multiples
    number_multiples.sum
    p number_multiples.sum
  end
end
