Write a function that calculate the number of characters.

Example:

  cal_chars("ababccabcacbc")
  #=> {:a=>4, :b=>4, :c=>5}
  cal_chars("oooxoxxoxoxoxoxoxoxo")
  #=> {:o=>11, :x=>9}
  cal_chars("rorrrorrorr")
  #=> {:r=>8, :o=>3}

# methods
def cal_chars(str)
  ans = Hash.new(0)
  str.each_char { |char| ans[char.to_sym] += 1 }
  ans
end
