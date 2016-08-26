class Foo
  def method1
    rorr = Foo.new
    rorr.method2
  end

  protected

  def method2
    "Hello World"
  end
end

Foo.new.method1
