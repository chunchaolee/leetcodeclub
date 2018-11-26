def check_inclusion(s1, s2)
  return false if s1.nil? || s2.nil?

  s1_arr = s1.chars
  s2_arr = s2.chars

  if s1_arr.uniq.size > s2_arr.size
    return false
  elsif s1_arr.size == s2_arr.size
    return false if s1_arr.sort.join('') != s2_arr.sort.join('')
    return true if [s2_arr.sort.join('')] - [s1_arr.sort.join('')] == []
  elsif (s2_arr - s1_arr).size == (s2_arr.uniq.size - s1_arr.uniq.size)
    s1_permutations = s1_arr.permutation.uniq.map(&:join)
    s1_permutations.each do |s1_permutation|
      return true if s2.gsub(s1_permutation, '').size == s2.size - s1.size
    end
  else
   return false
  end
end