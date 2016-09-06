class String
  
  def character_count
    
    uppercase_count = 0
    lowercase_count = 0
    digit_count = 0
    uppercase_range = ('A'..'Z')
    lowercase_range = ('a'..'z')
    digit_range = ('0'..'9')
    special_character_count = 0
    self.each_char do |character|
      
      if uppercase_range === character
        uppercase_count += 1
      elsif lowercase_range === character
        lowercase_count += 1
      elsif digit_range === character
        digit_count += 1
      elsif character != ' '
        special_character_count += 1 
      end
    
    end
    return [lowercase_count, uppercase_count, digit_count, special_character_count]
  
  end

end

