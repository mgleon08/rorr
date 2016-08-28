module Rorr
  class Config
    @stdin  = $stdin
    @stdout = $stdout
    @delay  = 0.6
    @level  = 'normal'
    @number = 9
    @path_prefix = '.'
    @solution = false
    class << self
      attr_accessor :stdin, :stdout, :delay, :topic, :level, :number, :path_prefix, :solution
    end
  end
end
