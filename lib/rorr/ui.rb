module Rorr
  class UI
    class << self
      def puts(msg)
        Config.stdout.puts(msg) if Config.stdout
      end

      def gets
        printf "> "
        Config.stdin.gets.chomp! if Config.stdin
      end

      def puts_with_delay(msg)
        sleep(Config.delay)
        puts(msg)
      end

      def menu
        puts "\nChoose the topic you want to start"
        puts "1. Don't ask me Ruby or Rails"
        puts "0. exit\n\n"
      end
    end
  end
end
