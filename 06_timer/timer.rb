# Timer stores seconds, echoes HH:MM:SS
class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    time_string =  []
    time_string[0] = @seconds / 3600
    time_string[1] = @seconds % 3600 / 60
    time_string[2] = @seconds % 3600 % 60
    time_string.map!{ |i| i.to_s.rjust(2, '0')   }
    time_string.join(':')
  end
end
