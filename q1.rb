# 原始人暴力解
time_start = Time.now.getutc

for num in 10..10000000
  if num.to_s == num.to_s.reverse &&
    num.to_s(8) == num.to_s(8).reverse &&
    num.to_s(2) == num.to_s(2).reverse
    puts "#{num} is a palidrome"
  end
end

time_end = Time.now.getutc

puts "exe time: #{time_end - time_start} sec"



# 排除偶數
time_start = Time.now.getutc

for num in (11..10000000).step(2)
  if num.to_s == num.to_s.reverse &&
    num.to_s(8) == num.to_s(8).reverse &&
    num.to_s(2) == num.to_s(2).reverse
    puts "#{num} is a palidrome"
  end
end

time_end = Time.now.getutc

puts "exe time: #{time_end - time_start} sec"
