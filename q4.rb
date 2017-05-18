def cut(m,n,bars)
  if bars == n
    0 # recursion ending condition
  elsif bars > n
    puts "Error appear, bars never greater than n."
  else
    if bars <= m
      1 + cut(m,n,bars * 2)
    else
      if bars + m < n
	1 + cut(m,n,bars + m)
      else
	1 + cut(m,n,n) # set bars = n in order to end recursion
      end
    end
  end
end

puts cut(3,20,1)
puts cut(5,100,1)
