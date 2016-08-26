VAL1 = 'Global'

module Test
  VAL1 = 'Local'

  class Foo
    def method1
      VAL1
    end
  end
end

class Test::Foo
  def method2
    VAL1
  end
end

Test::Foo.new.method1
