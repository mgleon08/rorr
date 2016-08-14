module Rorr
  class Config
    @stdin, @stdout, @delay, @level, @number, @path_prefix = $stdin, $stdout, 0.6, 'normal', -1, "."
    class << self
      attr_accessor :stdin, :stdout, :delay, :topic, :level, :number, :path_prefix
    end
  end
end
