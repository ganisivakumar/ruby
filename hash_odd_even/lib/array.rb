class Array
  
  def group_by_size
    hash_group_by_size = Hash.new { |hash, key| hash[key] = [] }
    hash_group_by_size = group_by { |element| element.to_s.length }
  end

  def group_by_type
    hash_group_by_type = Hash.new { |hash, key| hash[key] = [] }
    group_by_size.inject(0) do |result, (key, value)|
      if key.odd?
        hash_group_by_type["odd"] << value
      else
        hash_group_by_type["even"] << value
      end
      hash_group_by_type
    end
  end

end

