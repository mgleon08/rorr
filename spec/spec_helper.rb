$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rorr'

RSpec.configure do |config|
  config.exclude_pattern = "#{File.expand_path('../check_answer/**/*', __FILE__)}"
end
