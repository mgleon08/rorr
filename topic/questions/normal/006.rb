module Test
  def say
    "Hi!"
  end
end

class Foo
  extend Test
  def say
    "Hello!"
  end
end

Test.new.say
