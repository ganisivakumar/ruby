class Array

  def group_by_length(array)
    hash_group_by_length = Hash.new{ |hash,key| hash[key] = [] }
    for element in array do
      hash_group_by_length[element.to_s.size] << element
    end
    hash_group_by_length
  end

end  

