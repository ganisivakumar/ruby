class Array

  def group_by_length
    hash_group_by_length = Hash.new{ |hash,key| hash[key] = [] }
    for element in self do
      hash_group_by_length[element.to_s.size] << element
    end
    hash_group_by_length
  end

end  

