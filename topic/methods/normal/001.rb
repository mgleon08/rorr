Write a function that sorts the keys in a hash by the length of the key as a string.

Example:

  sort_keys({ abc: 'hello', 'another_key' => 123, 4567 => 'third' })
  #=> ["abc", "4567", "another_key"]
  sort_keys({ 12345 => 'hello', 'rorr' => 123, foo: 'bar' })
  #=> ["foo", "rorr", "12345"]
  sort_keys({ a: 1, bbb: 2, cc: 3 })
  #=> ["a", "cc", "bbb"]

# methods
def sort_keys(hsh)
  hsh.keys.map(&:to_s).sort_by(&:length)
end
