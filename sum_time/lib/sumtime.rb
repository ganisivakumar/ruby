require "time"

class SumTime

  TIME_PATTERN = /([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/
  
  def sum (a, b)
    if a.match(TIME_PATTERN) && b.match(TIME_PATTERN)
      a = Time.parse(a)
      b = Time.parse(b)
      sum_time = a + convert_to_seconds(b)
      days = sum_time.day - a.day
      if days > 0
        "#{days} day & #{sum_time.to_s.match(TIME_PATTERN)}"
      else
        "#{sum_time.to_s.match(TIME_PATTERN)}"
      end
    else
      "Invalid time entered"
    end
  end 

  def convert_to_seconds(time)
    (time.hour * 3600) + (time.min * 60) + (time.sec)
  end
  
end

