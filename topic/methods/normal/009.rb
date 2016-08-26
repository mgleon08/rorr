Write a function to take the num parameter being passed and return the factorial of it(e.g. if num = 4, return (4 * 3 * 2 * 1)).
For the test cases, the range will be between 1 and 18.

Example:

  first_factorial(4)
  #=> 24
  first_factorial(8)
  #=> 40320
  first_factorial(18)
  #=> 6402373705728000

# methods
def first_factorial(num)
  (1..num).inject(1, :*)
end
