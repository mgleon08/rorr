Write a function that sort with array.

Example:

  alphabetize(["Ruby", "Rails", "Python", "PHP", "Swift"], false)
  #=> ["PHP", "Python", "Rails", "Ruby", "Swift"]
  alphabetize(["Ruby", "Rails", "Python", "PHP", "Swift"], true)
  #=> ["Swift", "Ruby", "Rails", "Python", "PHP"]
  alphabetize(["Foo", "Bar", "Ruby", "Or", "Rails"], true)
  #=> ["Ruby", "Rails", "Or", "Foo", "Bar"]

# methods
def alphabetize(ary, bool)
  if bool
    ary.sort{ |item1, item2| item2 <=> item1}
  else
    ary.sort{ |item1, item2| item1 <=> item2}
  end
end
