require "time"

class SumTime

  TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/
  
  def sum (time_a, time_b)
    time_a + convert_to_seconds(time_b)
  end 

  def convert_to_seconds(time)
    (time.hour * 3600) + (time.min * 60) + (time.sec)
  end

  def verify_time?(string)
    TIME_PATTERN =~ string
  end

  def display_time(time_1, time_2)
    if verify_time?(time_1) && verify_time?(time_2)
      time_1 = Time.parse(time_1)
      time_2 = Time.parse(time_2)
      sum_time = sum(time_1, time_2)
      days = sum_time.day - time_1.day
      if days > 0
        "#{days} day & #{sum_time.to_s.match(/([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/)}"
      else
        "#{sum_time.to_s.match(/([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/)}"
      end
    else
      "Invalid time entered"
    end
  end

end

