VAL2 = 'Global'

module Test
  VAL2 = 'Local'

  class Foo
    def method1
      VAL2
    end
  end
end

class Test::Foo
  def method2
    VAL2
  end
end

Test::Foo.new.method2
