class Robot
  POSSIBLE_DIRECTIONS = %i[north east south west]
  PD = POSSIBLE_DIRECTIONS
  private_constant :PD

  def initialize(current_facing = nil, x = 0, y = 0) # x e y are catesian coordinates
    @x = x
    @y = y
    @current_facing = current_facing
    @counter = 0
  end

  def orient(direction)
    raise ArgumentError.new "argument issue" unless POSSIBLE_DIRECTIONS.include?(direction)
    @current_facing = direction
  end

  def bearing
    @current_facing
  end

  def turn_right
    @counter = PD.index(@current_facing)
    @current_facing = PD[(@counter + 1) % 4]
  end

  def turn_left
    @counter = PD.index(@current_facing)
    @current_facing = PD[(@counter - 1) % 4]
  end

  def at(x, y)
    @x = x
    @y = y
    [@x, @y]
  end

  def coordinates
    [@x, @y]
  end

  def advance
    case @current_facing
    when @current_facing = :north then @y += 1
    when @current_facing = :east then @x += 1
    when @current_facing = :south then @y -= 1
    when @current_facing = :west then @x -= 1
    end
  end
end

class Simulator < Robot
  INTRUCTIONS = {"A" => :advance, "R" => :turn_right, "L" => :turn_left}

  def instructions(instructions)
    sequence = []
    instructions.split("").each do |instruction|
      sequence.push(INTRUCTIONS[instruction])
    end
    sequence
  end

  def place(robot, x:, y:, direction:)
    orient(:direction)
    at(:x, :y)
  end

  def evaluate(robot, instructions)
  end
end
