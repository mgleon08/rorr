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
      parse_options
    end

    private

    def parse_options
      options = OptionParser.new
      options.banner = 'Usage: RorR [options]'
      options.on('-s', '--second SECONDS', 'Delay each turn by seconds (default: 0.6)') { |seconds| Config.delay = seconds.to_f }
      options.on('-h', '--help', 'Show this message') { puts(options); exit }
      options.parse!(@arguments)
    end
  end
end
