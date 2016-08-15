'[%s]' % 'same old drag' # => '[same old drag]'

# solution
str % arg → new_str
Format — Uses str as a format specification, and returns the result of applying it to arg.

"%05d" % 123                              #=> "00123"
"%-5s: %08x" % [ "ID", "self.object_id" ] #=> "ID   : 200e14d6"
"foo = %{foo}" % { :foo => 'bar' }        #=> "foo = bar"
