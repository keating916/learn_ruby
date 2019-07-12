class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    m = @seconds/60
    h = m/60
    if(h != 0)
      m = m %60
    end
    @seconds = @seconds %60
    return "%02i:%02i:%02i" % [h, m, @seconds]
  end
end