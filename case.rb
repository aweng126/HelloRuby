=begin
结构如下
同一个when可以包含多个情况，中间用，隔开
=end

a=5
case a
  when 1,3
    puts "1.a=#{a}"
  when 2
    puts "2.a=#{a}"
  when 4,5
    puts "3.a=#{a}"
  else
    puts "else a=#{a}"
end