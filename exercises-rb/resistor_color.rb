class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  private

  def initialize(color)
    @color = color
  end
  attr_reader :color
  def self.color_code(color)
    new(color).color_code
  end

  public

  def color_code
    COLORS.index(color)
  end
end
