class String
  def search(keyword)
    pattern = /(#{ keyword })/i
    count = scan(pattern).size
    output = gsub(pattern, '(\1)')
    return output, count
  end
end

