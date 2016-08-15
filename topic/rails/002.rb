aaa.instance_values

# solution
Returns a hash with string keys that maps instance variable names without “@” to their corresponding values.

class C
  def initialize(x, y)
    @x, @y = x, y
  end
end

C.new(0, 1).instance_values # => {"x" => 0, "y" => 1}
