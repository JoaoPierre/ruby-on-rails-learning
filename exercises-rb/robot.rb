class Robot
  POSSIBLE_DIRECTIONS = %i[north, west, south, east]

  attr_accessor :current_facing, :x, :y

  def initialize(current_facing = nil, x = 0, y = 0) #x e y are catesian coordinates
    @x = x
    @y = y
    @current_facing = current_facing
  end

  def orient(direction)
    raise ArgumentError, "Direction does not accepts #{direction}" unless POSSIBLE_DIRECTIONS.include?(direction)
    current_facing= direction
    puts current_facing
  end

  def bearing
    current_facing
  end

end

robot = Robot.new
robot.orient(:south)
