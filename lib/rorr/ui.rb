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
        puts "2. What's the return value?"
        puts "3. Methods?"
        puts "0. exit\n\n"
      end

      def question(question, index)
        sleep_with_setting
        puts "\n------------------------------"
        puts "Question #{ index } :"
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
        puts "\n#{repo_rjust("Correct Rate:", 14)} #{repo_rjust(Score.correct_rate, 6)}%".green
        puts "#{repo_rjust("Wrong Rate:", 14)} #{repo_rjust(Score.wrong_rate, 6)}%".red
        puts "#{repo_rjust("Skip Rate:", 14)} #{repo_rjust(Score.skip_rate, 6)}%".light_blue
        puts "#{repo_rjust("Spend Time:", 14)} #{repo_rjust(Score.time, 6)}s".light_blue
        puts_with_delay "\nEnter to exit\n"
        gets
      end

      def repo_format(input, color = 'white')
        repo_rjust(input).public_send(color)
      end

      def repo_rjust(input, length = 2)
        input.to_s.rjust(length)
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
