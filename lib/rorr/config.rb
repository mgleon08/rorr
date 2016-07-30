module Rorr
  class Config
    @stdin, @stdout, @delay, @level, @number = STDIN, STDOUT, 0.6, 'normal', -1
    class << self
      attr_accessor :stdin, :stdout, :delay, :topic, :level, :number
    end
  end
end
