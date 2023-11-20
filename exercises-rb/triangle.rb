class Triangle
  public

  def equilateral?
    return false unless fits_triangle_rule?
    first_side == second_side && second_side == third_side
  end
  def isosceles?
    return false unless fits_triangle_rule?
    case
    when sides.select{|side| side == first_side}.length.equal?(2) then true
    when sides.select{|side| side == second_side}.length.equal?(2) then true
    when sides.select{|side| side == third_side}.length.equal?(2) then true
    when sides.select{|side| side == first_side}.length.equal?(3) then true
    else false
    end
  end
  def scalene?
    return false unless fits_triangle_rule?
    sides.uniq.length.equal?(3)
  end
  private
  def initialize(sides)
    @first_side = sides[0]
    @second_side = sides[1]
    @third_side = sides[2]
    @sides = sides
  end
  attr_reader :first_side, :second_side, :third_side, :sides
  def valid_sides?
    sides.all?{|side| side > 0}
  end
  def fits_triangle_rule?
    return false unless valid_sides?
    first_side+second_side >= third_side && first_side+third_side >= second_side && third_side+second_side >= first_side
  end
end
