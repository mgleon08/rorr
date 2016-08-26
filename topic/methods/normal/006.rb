Write a function to take the str parameter being passed and return the string in reversed order.

Example:

  first_factorial("Hello")
  #=> "olleH"
  first_factorial("I Love RorR")
  #=> "RroR evoL I"
  first_factorial("Foo Bar")
  #=> "raB ooF"

# methods
def first_factorial(str)
  str.split("").reverse.join("")
end
