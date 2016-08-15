module Rorr
  class Config
    @stdin, @stdout, @delay, @level, @number, @path_prefix, @solution = $stdin, $stdout, 0.6, 'normal', -1, ".", false
    class << self
      attr_accessor :stdin, :stdout, :delay, :topic, :level, :number, :path_prefix, :solution
    end
  end
end
