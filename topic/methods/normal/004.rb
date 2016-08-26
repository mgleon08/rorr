Write a function to take the str parameter being passed and capitalize the first letter of each word.
Words will be separated by only one space.

Example:

  letter_capitalize("hello world")
  #=> "Hello World"
  letter_capitalize("i love ruby or rails")
  #=> "I Love Ruby Or Rails"
  letter_capitalize("this is rorr")
  #=> "This Is Rorr"

# methods
def letter_capitalize(str)
  str = str.split(" ").each {|a| a.capitalize!}.join(" ")
end
