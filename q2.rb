def start_q2(from, to)
  # ops = ["+","-","*","/",""] 
  ops = ["*",""] # 減號除號皆無法湊滿千位數,而加號滿足千位的只有1000~1008,亦無用
  (from..to).each do |num|
    num_a = num.to_s.split("")
    result = [num_a[0]].product(ops,[num_a[1]],ops,[num_a[2]],ops,[num_a[3]])
    result.each do |arr_ele|
      each_str = arr_ele.join
      next if invalid?(each_str)
      puts num if eval(each_str).to_s == num.to_s.reverse
    end
  end
end

# 檢驗字串是否可正常eval
# 1.數字間沒插入運算符號, e.g. 3082
# 2.不能除零,		  e.g. 3/0*82
# 3.處理不合法的八進位,	  e.g. 3+08*2
def invalid?(str)
  (str.size == 4) || (str =~ /\/0/) || (str =~ /[\+\-\*\/]0[0-9]/)
end

# demo time
start_q2(1000,9999)

