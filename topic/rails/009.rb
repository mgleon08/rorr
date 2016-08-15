.blank?

# solution
An object is blank if it’s false, empty, or a whitespace string.
For example, ”, ‘ ’, nil, [], and {} are all blank.

This simplifies

address.nil? || address.empty?
to
address.blank?
