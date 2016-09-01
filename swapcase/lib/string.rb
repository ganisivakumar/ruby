class String
  def to_s
    self.each_byte.each_with_index do |ascii_value_of_char, index|
      if(ascii_value_of_char >= 65 && ascii_value_of_char <= 90)
        self[index] = (ascii_value_of_char + 32).chr
      elsif(ascii_value_of_char >= 97 && ascii_value_of_char <= 122)
        self[index] = (ascii_value_of_char - 32).chr
      end
    end
  end
end

