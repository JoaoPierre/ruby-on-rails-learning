class IsbnVerifier
  X_VALUE = "10"
  REGULAR_EXPRESSION = {
    valid_expression: /^\d-?\d{3}-?\d{5}-?[\dX]$/,
    digits: /\d|X/
  }
  RE = REGULAR_EXPRESSION
  private_constant :RE

  def self.valid?(id)
    if id.match?(RE[:valid_expression])
      digits = id.scan(RE[:digits])
      digits[-1] = X_VALUE if digits.last == "X"
      total = digits.reverse.map(&:to_i).map.with_index { |digit, i| (i + 1) * digit }.sum
      (total % 11).equal?(0)
    end
  end
end
