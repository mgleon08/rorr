module Rorr
  class Init
    def initialize(arguments, stdin, stdout)
      @arguments = arguments
      @stdin     = stdin
      @stdout    = stdout
    end

    def run
      Config.stdin  = @stdin
      Config.stdout = @stdout
    end
  end
end
