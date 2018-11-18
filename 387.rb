def first_uniq_char(s)
  s_arr = s.chars
  s_arr.uniq.each do | char|
    return s_arr.index(char) if s_arr.count(char) == 1
  end
  return -1
end