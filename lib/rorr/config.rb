module Rorr
  class Config
    @delay = 0.6
    class << self
      attr_accessor :stdin, :stdout, :delay
    end
  end
end
