require 'pry'

class Clock
  attr_reader :time_in_minutes

  def initialize(hour: 0, minute: 0)
    @time_in_minutes = (hour * 60) + minute
  end
  
  def +(other)
    @time_in_minutes += other.time_in_minutes
    self
  end

  def -(other)
    @time_in_minutes -= other.time_in_minutes
    self
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    format("%02d:%02d", *time)
  end
  
  private
  
  def time
    [hours, minutes]
  end
  
  def hours
    h = (@time_in_minutes / 60) % 24
  end

  def minutes
    @time_in_minutes % 60
  end

end