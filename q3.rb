(1..100).each do |i|

  # 預設編號 1 - 100 卡牌蓋牌 
  flag = false
  (1..i).each do |j|
    if i % j == 0
      
      # 發現因數翻牌一次
      flag = !flag
    end
  end

  # 擁有奇數個因數的卡牌最後會翻面，
  # 比如卡牌 4 有 1,2,4 三個因數，結果正面朝上
  puts i if flag
end
