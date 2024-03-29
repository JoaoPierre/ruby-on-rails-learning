class CollatzConjecture
  def self.steps(number)
    new(number).steps
  end

  private

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def argument_error
    raise ArgumentError unless number.positive?
  end

  public

  def steps
    argument_error

    return 0 if number == 1

    if number.even?
      @number /= 2
    else
      @number = number * 3 + 1
    end
    1 + steps
  end
end
