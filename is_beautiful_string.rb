class IsBeautifulString
  def beautiful_string?(input)
    # create a hash to count the number of times each character occurs
    # # hashes are ordered, so order the hash alphabetically

    # initialize the hash with the alphabet and zero for each character
    hash = Hash.new(0)
    ('a'..'z').each {|c| hash[c] = 0}

    # iterate through the tokens in the array once increment the associated value in the hash for that key
    input.split('').each {|char| hash[char] += 1}

    # iterate through the keys of the hash in order, and if any of the values is greater
    # than a previous value, return false
    prev_val = -1
    iteration = 0
    hash.sort.each do |key, value|
      if iteration > 0
        return false unless prev_val >= value
      end
      prev_val = value
      iteration += 1
    end

    # if reaching the end of the hash, return true
    true
  end

end
