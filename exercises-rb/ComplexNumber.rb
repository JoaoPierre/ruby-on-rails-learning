class ComplexNumber

  attr_reader :real, :imaginary

  def initialize(real, imaginary = 0)
    @real = real
    @imaginary = imaginary
  end

  def ==(other)
     (self - other).abs < 0.01
  end

  def +(other)
    self.class.new(real + other.real , imaginary + other.imaginary)
  end

  def -(other)
    self.class.new(real - other.real , imaginary - other.imaginary)
  end

  def *(other)
    self.class.new(real*other.real- imaginary*other.imaginary, imaginary*other.real + @real*other.imaginary)
  end

  def /(other)
    self.class.new((real*other.real+imaginary*other.imaginary)/other.abs**2, (imaginary*other.real - real*other.imaginary)/other.abs**2)
  end

  def conjugate
    self.class.new(real,-imaginary)
  end

  def abs
    Math.hypot(@real, imaginary)
  end

  def exp
    self.class.new(Math.exp(real)) * self.class.new(Math.cos(imaginary), Math.sin(imaginary))
  end
end
