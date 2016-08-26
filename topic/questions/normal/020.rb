class Foo
  def ==(b)
    return 'Hi'
  end
  def size()
    self
  end
end

def empty?(s)
  return s.size == 0
end

empty?(Foo.new)
