Array(foo: :bar)      # => [[:foo, :bar]]

# solution
Array(arg) → array
Returns arg as an Array.
First tries to call to_ary on arg, then to_a.

Array(1..5)   #=> [1, 2, 3, 4, 5]
