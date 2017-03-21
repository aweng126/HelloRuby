=begin
在ruby中的异常处理，具体结构如下
=end

begin
  #这里是可能出现问题的代码
rescue =>e
  puts e.message+e.class+e.backtrace  #f分别输出的是错误的信息，错误的类，错误的跟踪
ensure
  #类似于finally操作，无论发生什么都会执行的一段代码
end