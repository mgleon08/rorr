(1..10).include?(3..7)  # => true
(1..10).include?(0..7)  # => false

# solution
(1..5).include?(2..3)  # => false
require 'active_support/all'
(1..5).include?(2..3)  # => true

Active Support extends these methods so that the argument may be another range in turn.
