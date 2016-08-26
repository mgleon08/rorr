Write a single line of Ruby code that prints the Fibonacci sequence of any length as an array.

(Hint: use inject)

Example:

  fibonacci(8)
  #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  fibonacci(15)
  #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
  fibonacci(20)
  #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]

# methods
def fibonacci(int)
  (1..int).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }
end
