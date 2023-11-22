class ResistorColorTrio
  COLORS =  {"black" => 0,
             "brown" => 1,
             "red" => 2,
             "orange" => 3,
             "yellow" => 4,
             "green" => 5,
             "blue" => 6,
             "violet" => 7,
             "grey" => 8,
             "white" => 9}

  #COLORS = %w[black brown red orange yellow green blue violet grey white]
  def initialize(colors)
    raise ArgumentError unless colors.class == Array
    @colors = colors.reverse
  end

  attr_reader :colors

  def label
    case
    when COLORS[colors[0]] >= 2 then "Resistor value: #{num/10**3} kiloohms"
    else "Resistor value: #{num} ohms"
    end
  end

  def num
    first_num = COLORS[colors[2]]*10
    second_num = COLORS[colors[1]]
    fullnum = (first_num+second_num)*10**COLORS[colors[0]]
  end
