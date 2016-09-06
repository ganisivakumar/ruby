class String
  
  def count_special_characters
    self.each_char.each_with_index do |character, index|
      if character.match(/\W/)                                 
        puts "Special character '#{character}' is at position #{index}"
      end
    end
  end
  
end
  
