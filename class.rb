=begin
类名和模块名要大写
=end

class Helloworld

  #定义常量
  VERSION=2

  attr_reader :name  #对name这个实例变量设置读权限 实际上就是getter方法 ；也就是说用这句话可以替代后面的三行的getter方法
  attr_writer :name  #对name这个实例变量设置写权限，实际上就是setter方法。用这句话替代setter方法
  attr_accessor :name #对name这个实例变量设置读写权限，实际上这样就可以省略写getter和setter方法


  #等同于构造方法，当通过类名.new来创建对象的时候会调用这个方法
  def initialize(myname="ruby")
    #创建实例变量
    @name=myname
  end

  #public 下面的函数都是可以从外部进行调用的
  public
  #定义实例方法
  def hello
    puts "hello.world I'am #{@name}"
  end

  #private 下面的函数只能在内部使用
  private

  #protect 下面的函数能在类及子类中进行使用
  protected

def goodbye
  puts " goodbye I'am #{@name}
end


  #建立类函数方式一
  def itself.sayhello(name)
    puts "#{name} said hello to you in other way"
  end


  #创建getter方法 但是这里面的内容可以用attr_reader :name来进行替代
=begin
  def name
    @name
  end
=end

  #创建setter方法  这个方法可以用attr_writer :name来进行替代
=begin
  def name=(value)
    @name=value
  end
=end
end


#创建类函数方式二：类似于静态函数
=begin
class<< Helloworld
   def sayhello(name)
     puts "#{name} said hello to you!"
   end
end
=end

#建立类函数方式三
def Helloworld.sayHelloToYou(name)
  puts "#{name} say hello def helloworld.sayHelloToYou"
end


#默认的构造方法
bob=Helloworld.new
bob.hello

#传入参数的构造方法
alice=Helloworld.new("alice")
alice.hello

puts bob.name
bob.name="bob"
puts bob.name

Helloworld.sayhello bob.name
Helloworld.sayHelloToYou bob.name

#输出常量
puts Helloworld::VERSION

