'hello'.at(4)  # => 'o'

# solution
If you pass a single integer, returns a substring of one character at that position.

str = "hello"
str.at(0)      # => "h"
str.at(1..3)   # => "ell"
str.at(-2)     # => "l"
str.at(-2..-1) # => "lo"
str.at(5)      # => nil
str.at(5..-1)  # => ""

If a Regexp is given, the matching portion of the string is returned. If a String is given, that given string is returned if it occurs in the string. In both cases, nil is returned if there is no match.

str = "hello"
str.at(/lo/) # => "lo"
str.at(/ol/) # => nil
str.at("lo") # => "lo"
str.at("ol") # => nil
