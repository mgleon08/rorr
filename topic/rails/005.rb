alias_attribute

# solution
Allows you to make aliases for attributes, which includes getter, setter, and query methods.

class Content < ActiveRecord::Base
# has a title attribute
end

class Email < Content
  alias_attribute :subject, :title
end

e = Email.find(1)
e.title    # => "Superstars"
e.subject  # => "Superstars"
e.subject? # => true
e.subject = "Megastars"
e.title    # => "Megastars"
