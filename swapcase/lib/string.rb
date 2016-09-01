class String
  def to_s
    self.each_byte.each_with_index do |c, index|
      if(c >= 65 && c <= 90)
        self[index] = (c + 32).chr
      elsif(c >= 97 && c <= 122)
        self[index] = (c - 32).chr
      end
    end
  end
end

