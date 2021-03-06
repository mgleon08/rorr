module Rorr
  class Init
    def initialize(arguments)
      @arguments = arguments
    end

    def run
      parse_options
      Rorr::Main.choose
    end

    private

    def parse_options
      options = OptionParser.new
      options.banner = 'Usage: rorr [options]'
      options.on('-t', '--time SECONDS', 'Delay each turn by seconds (default: 0.6)') { |seconds| Config.delay = seconds.to_f }
      options.on('-n', '--number NUMBER', 'Number of questions (default: 10, all = 0)') { |number| Config.number = (number.to_i -1) }
      options.on('-s', '--solution', 'Show the solution (default: false)') { |_number| Config.solution = true }
      options.on('-h', '--help', 'Show this message') { puts(options); exit }
      options.parse!(@arguments)
    end
  end
end
