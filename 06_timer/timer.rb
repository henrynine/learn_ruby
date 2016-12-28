class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    t = []
    s = ""
    t[0] = (@seconds % 60).to_s
    t[1] = ((@seconds / 60) % 60).to_s
    t[2] = ((@seconds / 3600) % 60).to_s

    (t.length-1).downto(0) do |i|
      if t[i].length < 2
        t[i] = '0' + t[i]
      end
      s += t[i] + ":"
    end
    s[0..-2]
  end
end
