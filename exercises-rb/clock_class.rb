class Clock 

  attr_accessor :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = hour*60 + minutes 
  end  


  def +(other)
    @total_minutes += other.total_minutes 
  end

  def -(other)
    @total_minutes -= other.total_minutes 
  end 
  
  def ==(other)
    to_s == other.to_s
  end


  def to_s 
    format '%02i:%02i' , *time
  end  


  def hours(minutes)
    minutes / 60 % 24 
  end 
  def minutes(minutes)
    minutes % 60
  end
  
  def time
    [hours(@total_minutes) , minutes(total_minutes)]

  end 
end

