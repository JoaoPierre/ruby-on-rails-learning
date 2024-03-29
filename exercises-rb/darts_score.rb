class Darts
  RADIUS = {inner: 1, middle: 5, outer: 10}
  SCORE = {max: 10, mid: 5, outer: 1, miss_target: 0}

  private

  attr_reader :center_distance
  def initialize(x, y)
    @center_distance = Math.hypot(x, y)
  end

  public

  def score
    case center_distance
    when ..RADIUS[:inner] then SCORE[:max]
    when ..RADIUS[:middle] then SCORE[:mid]
    when ..RADIUS[:outer] then SCORE[:outer]
    else SCORE[:miss_target]
    end
  end
end
