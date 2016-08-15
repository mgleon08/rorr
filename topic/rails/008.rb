Array.wrap(nil)     # => []
Array.wrap([1, 2, 3]) # => [1, 2, 3]
Array.wrap(0)    # => [0]

# solution
Wraps its argument in an array unless it is already an array (or array-like).
