Write a function to take the str parameter being passed and modify it using the following algorithm.
Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a).

Example:

  letter_changes("hello*3")
  #=> "ifmmp*3"
  letter_changes("have fun!")
  #=> "ibwf gvo!"
  letter_changes("ruby or rails!")
  #=> "svcz ps sbjmt!"

# methods
def letter_changes(str)
  str.tr!('a-z', 'b-za')
end
