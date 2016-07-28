module Rorr
  class Config
    @stdin, @stdout, @delay, @level = STDIN, STDOUT, 0.6, 'normal'
    class << self
      attr_accessor :stdin, :stdout, :delay, :topic
    end
  end
end
