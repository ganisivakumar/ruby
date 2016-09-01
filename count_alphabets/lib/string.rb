class String
  
  def count_alphabets
    counts = Hash.new(0)
    
    #Regex pattern for removing non-alphabets
    downcase.gsub(/[^a-z]/, "").each_char do |char| 
      counts[char] += 1
    end
    
    counts
  end

end
  
