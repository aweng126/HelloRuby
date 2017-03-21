
#目前存在bug
# HelloModule并不是一个类。是因为module和class不能同时在一个文件中定义吗
# HelloModule::VERSION  也不能识别
# 当在类中通过include引用之后，还是不能识别

=begin
模块只表示行为
=end
module HelloModule
  VERSION="1.0"
  def sayhello(name)
    puts "hello #{name}"
  end

end

#单纯的直接调用module中的数据

class HelloModule
  included HelloModule
  attr_accessor :name
  def initialize(myname="ruby")
    @name=myname
  end

  def hello()
    puts "HelloModule,I'am #{name}"
  end
end

mo=HelloModule.new
mo.hello
