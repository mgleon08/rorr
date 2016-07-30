module Rorr
  class UI
    class << self
      def puts(msg)
        Config.stdout.puts(msg) if Config.stdout
      end

      def gets
        Config.stdin ? Readline.readline("> ", true) : ''
      end

      def puts_with_delay(msg)
        sleep_with_setting
        puts(msg)
      end

      def sleep_with_setting
        sleep(Config.delay)
      end

      def menu
        puts_with_delay "\nWelcom to RorR!".light_red
        sleep_with_setting
        puts "\nChoose the topic you want to start"
        puts "1. Don't ask me Ruby or Rails"
        puts "0. exit\n\n"
      end

      def question(question, index)
        sleep_with_setting
        puts "\n------------------------------"
        puts "Question #{ index + 1 } :"
        puts "------------------------------\n\n"
        puts "#{question}"
        puts "------------------------------\n"
      end

      def solution(sol)
        puts_with_delay "\nsolution:#{sol.light_green}"
        puts_with_delay "Enter to next"
        gets
        system "clear"
      end

      def report
        system "clear"
        puts_with_delay "\n Test Report \n\n"
        sleep_with_setting
        puts " Q. | Corr | Wrong | Skip | Retry "
        puts "---------------------------------"
        Score.report.each do |r|
          puts " #{repo_format(r[:question])} |  #{repo_format(r[:correct], 'green')}  |  #{repo_format(r[:wrong], 'green')}   |  #{repo_format(r[:skip], 'green')}  |  #{repo_format(r[:retry])}"
        end
        puts "---------------------------------"
        puts " #{repo_format(Score.total_count)} |  #{repo_format(Score.total[:correct])}  |  #{repo_format(Score.total[:wrong])}   |  #{repo_format(Score.total[:skip])}  |  #{repo_format(Score.total[:retry])}"
        puts "\n#{"Correct Rate:".rjust(14)} #{Score.correct_rate.to_s.rjust(6)}%".green
        puts "#{"Wrong Rate:".rjust(14)} #{Score.wrong_rate.to_s.rjust(6)}%".red
        puts "#{"Skip Rate:".rjust(14)} #{Score.skip_rate.to_s.rjust(6)}%".light_blue
        puts_with_delay "\nEnter to exit\n"
        gets
      end

      def repo_format(input, color = nil)
        color ? input.to_s.rjust(2).public_send(color) : input.to_s.rjust(2)
      end

      def skip
        "#{"skip".light_blue} to pass"
      end

      def exit
        "#{"exit".red} to exit"
      end
    end
  end
end
