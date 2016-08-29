$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rorr'
require 'coveralls'
Coveralls.wear!

RSpec.configure do |config|
  config.exclude_pattern = "#{File.expand_path('../check_answer/**/*', __FILE__)}"
end
