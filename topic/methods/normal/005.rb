Write a function to add up all the numbers from 1 to num.
For the test cases, the parameter num will be any number from 1 to 1000.

Example:

  simple_adding(8)
  #=> 36
  simple_adding(12)
  #=> 78
  simple_adding(140)
  #=> 8256

# methods
def simple_adding(num)
  (1..num).reduce(0, :+)
end
