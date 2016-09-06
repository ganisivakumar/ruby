require "time"

class SumTime

  TIME_PATTERN1 = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/
  TIME_PATTERN2 = /([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/
  
  def initialize()
    @total_seconds = 0
  end
  
  def sum(time)
    seconds = convert_to_seconds(time)
    @total_seconds += seconds
  end

  def convert_to_seconds(time)
    (time.hour * 3600) + (time.min * 60) + (time.sec)
  end

  def verify_time?(string)
    TIME_PATTERN1 =~ string
  end

  def display_time(*a)
    a.each do |time|
      if verify_time?(time)
        time = Time.parse(time)
        sum(time)
      else
        return "#{time} is not a valid 24-hour time value."
      end
    end
    b = Time.parse("00:00:00")
    sum_time = b + @total_seconds
    days = sum_time.day - b.day
    if days > 0
      "#{days} day & #{sum_time.to_s.match(TIME_PATTERN2)}"
    else
      "#{sum_time.to_s.match(TIME_PATTERN2)}"
    end
  end

end

