module Rorr
  class Main
    class << self
      def choose
        system "clear"
        UI.menu
        while Config.topic = UI.gets
          case Config.topic
          when '1'
            game = DontAskMe.new
            break
          when '0', 'exit'
            UI.puts_with_delay "Goodbye!\n".yellow
            exit
          else
            UI.puts_with_delay "Please enter it again".light_blue
          end
        end
        sleep(1)
        game.start
      end
    end
  end
end
