class Triangle
  attr_accessor :sides

  def initialize(sides)
    raise ArgumentError unless sides.length == 3
    @sides = sides.sort
  end

  def equilateral?
    return false unless fits_triangle_rule?
    sides.uniq.length == 1
  end

  def isosceles?
    return false unless fits_triangle_rule?
    sides.uniq.length <= 2
  end

  def scalene?
    return false unless fits_triangle_rule?
    sides.uniq.length.equal?(3)
  end

  def valid_sides?
    sides.all? { |side| side > 0 }
  end

  def fits_triangle_rule?
    return false unless valid_sides?
    sides[0] + sides[1] >= sides[2]
  end
end

triangle = Triangle.new([2, 2, 2])
triangle.isosceles?
