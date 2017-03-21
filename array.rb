
arr=['1',"arr",true, 123]
puts arr.size
puts arr.length
puts arr.is_a?(Array)
puts arr.at(0)
arr.each do|a|
  puts arr.index(a)
end
