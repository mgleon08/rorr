class Foo
  def say
    "Hi!"
  end
end

class Bar < Foo
  def say
    "Hello! #{super}"
  end
end

Bar.new.say

