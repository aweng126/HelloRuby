=begin
模块只表示行为
=end
module HelloModule
  VERSION="1.0"
  def sayhello(name)
    puts "hello #{name}"
  end
  def hello
    puts " just hello "
  end

  module_function :hello
  #module_function :sayhello

end

#单纯的直接调用module中的数据

class HelloModuleClass
  include HelloModule
  attr_accessor :name
  attr_accessor :version
  def initialize(myname="ruby")
    @name=myname
    @version=VERSION
  end

  def hello()
    puts "HelloModule,I'am #{name}"
  end


end

mo=HelloModuleClass.new
mo.hello
mo.version
mo.sayhello("李明") #这个来自于引用了module的类
puts HelloModule::VERSION #这里是直接使用module中的常量
HelloModule.hello

