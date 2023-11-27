class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y , c , m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "Your speed was increased in #{number}km/h resulting in #{@current_speed}km/h"
  end

  def brake(nunber)
    @current_speed -= number
    @current_speed < 0 ? @current_speed = 0 : @current_speed
    puts "Your speed was decreased in #{number}km/h resulting in #{@current_speed}km/h"
  end

  def current_speed
    puts "Your curent speed is #{@current_speed}km/h"
  end

  def shut_down
    @current_speed = 0
    puts "The car is now Off"
  end


  def spray_paint(collor)
    self.color = collor
    puts "Your new color is #{self.color}"
  end


  def self.consume(miles,gallon)
    puts "the car consume was #{miles/gallon} MILES PER GALLON of gas"
  end

  def to_s
    "my car is #{color} and #{@model}!"
  end
end
