module ArmstrongNumbers
  def self.include?(number)
    number.digits.sum{|num| num ** number.digits.length} == number
  end
end
