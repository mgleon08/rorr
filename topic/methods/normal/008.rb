Write a function to take the sen parameter being passed and return the largest word in the string.
If there are two or more words that are the same length, return the first word from the string with that length.
Ignore punctuation and assume sen will not be empty.

Example:

  longest_word("fun&!! time")
  #=> "time"
  longest_word("Hello# @@World")
  #=> "Hello"
  longest_word("ruby or rails")
  #=> "rails"

# methods
def longest_word(str)
  str.split(/[^\w]+/).max_by(&:length)
end
