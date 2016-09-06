require "time"

class SumTime

  TIME_PATTERN = /([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum(*a)
    total_seconds = 0
    a.each do |time|
      if time.match(TIME_PATTERN)
        time = Time.parse(time)
        seconds = convert_to_seconds(time)
        total_seconds += seconds
      else
        return "#{time} is not a valid 24-hour time value."
      end
    end
    b = Time.parse("00:00:00")
    sum_time = b + total_seconds
    days = sum_time.day - b.day
    if days > 0
      "#{days} day & #{sum_time.to_s.match(TIME_PATTERN)}"
    else
      "#{sum_time.to_s.match(TIME_PATTERN)}"
    end
  end

  def convert_to_seconds(time)
    (time.hour * 3600) + (time.min * 60) + (time.sec)
  end

end

