=begin
在ruby中定义方法，支持方法的使用
=end
def hello(name="Daming")
  puts "hello "+"#{name}"
end
hello

hello("Lingling")

hello "LiMing"

hello "Lilei"

=begin
带返回值的方法
=end
def add(num1 ,num2)
  return num1+num2
end

result=add(1,2)
puts result
puts add(2,3)

=begin
方法有多个返回值,那么返回值会存在一个数组中，
可以通过数组的遍历进行获取
=end
def paras(par1,par2)
  return par1,par2
end
arr = paras(5,6)
puts arr.is_a?(Array)
arr.each do |a|
  puts  a   #arr.index(a)
end