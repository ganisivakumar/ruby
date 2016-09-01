class String
  def count_alphabets
    hash_count_alphabets = Hash.new(0)
    #Regex pattern for removing non-alphabets
    downcase.gsub(/[^a-z]/, "").each_char do |char| 
      hash_count_alphabets[char] += 1
    end
    hash_count_alphabets
  end
end
  
