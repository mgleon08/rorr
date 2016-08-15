class_attribute

# solution
Declare a class-level attribute whose value is inheritable by subclasses. Subclasses can change their own value and it will not impact parent class.

class Base
  class_attribute :setting
end

class Subclass < Base
end

Base.setting = true
Subclass.setting            # => true
Subclass.setting = false
Subclass.setting            # => false
Base.setting                # => true
