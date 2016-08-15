a.cycle { |x| puts x }     # print, a, b, c, a, b, c,.. forever..

# solution
cycle(n=nil) { |obj| block } → nil

Calls block for each element of enum repeatedly n times or forever if none or nil is given.
If a non-positive number is given or the collection is empty, does nothing.
Returns nil if the loop has finished without getting interrupted.
