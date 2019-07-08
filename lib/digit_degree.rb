class DigitDegree
  def digitDegree(n)
    depth = 1
    sum = 0
    n.to_s.split('').each { |digit| sum += digit.to_i }
    if sum < 10
      return 0 unless sum != n

      depth
    else
      1 + digitDegree(sum)
    end
  end
end
