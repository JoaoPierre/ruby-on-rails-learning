class PhoneNumber
  REGULAR_EXPRESSION = {valid_phone_number: /^\+?1?(?:\([2-9]\d{2}\)|[2-9]\d{2})?-?\.?[2-9]\d{2}-?\.?\d{4}$/}
  def initialize(number)
    @number = number.delete(" ")
    @digits = number.scan(/\d/)
  end

  attr_reader :number, :digits

  def self.clean(number)
    new(number).clean
  end

  def clean
    starts_with_1? if check_number
  end

  def check_number
    number.match?(REGULAR_EXPRESSION[:valid_phone_number])
  end

  def starts_with_1?
    (digits[0] == "1") ? digits.join[1..-1] : digits.join
  end
end
PhoneNumber.clean("12234567890")
