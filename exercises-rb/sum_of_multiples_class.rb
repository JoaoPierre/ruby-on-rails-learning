class SumOfMultiples

  attr_reader :base_value_items

  def initialize(*base_value_items)
    @base_value_items = base_value_items
  end

  def to(level)
    @level = level
    sum_of_multiples
  end

  def multiples?
    (1...@level).to_a.select do |number|
      base_value_items.any?{|base_value| number % base_value == 0}
    end.uniq
  end

  def sum_of_multiples
    multiples?.sum
  end
end
