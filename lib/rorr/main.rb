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
          when '2'
            game = ReturnValue.new
            break
          when '0', 'exit' then exit
          else
            UI.puts_with_delay "Please enter it again".light_blue
          end
        end
        UI.sleep_with_setting
        game.start
      end
    end
  end
end
