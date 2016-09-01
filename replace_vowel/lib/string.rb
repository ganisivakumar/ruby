class String

  def replace_vowels
    #case-insensitive modifier is used
    gsub(/[aeiou]/i, '*') 
  end

end

