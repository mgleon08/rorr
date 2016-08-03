module Rorr
  class ReturnValue
    def initialize
      @questions = []
      create_questions
    end

    def start
      system "clear"
      UI.puts "\nWelcome to #{"\"What's the return value?\"".light_cyan}"
      UI.puts "Let's check how much do you understand ruby or rails\n"
      @questions.each_with_index do |question, index|
        UI.question(question[:qu], index)
        Score.init(index+1)
        UI.puts "What's the return value? ( Type #{"Exception".green} if you expect an exception, #{UI.skip}, #{UI.exit} )\n\n"
        while answer = UI.gets
          case
          when match_ans?(answer, question[:ans])
            UI.puts "Yes, this is #{question[:ans]}!".green
            Score.add_correct
            break
          when answer == 'skip'
            UI.puts "Skip the Question!".light_blue
            Score.add_skip
            break
          when answer == '' then UI.puts_with_delay "Please enter again!".light_blue
          when answer == 'exit' then exit
          else
            UI.puts_with_delay "Error, Please enter again!".light_red
            Score.add_retry
          end
        end
        Score.add_report
        UI.solution(question[:sol])
      end
      UI.report
    end

    private

    def create_questions
      UI.puts "\nCreate Questions...\n"
      Dir[File.expand_path("../../../topic/questions/#{Config.level}/*.rb", __FILE__)].each do |file|
        qu  = `coderay -ruby #{file}`
        ans = qu_ans(File.read(file))
        @questions << { qu: qu, ans: ans, sol: "\n#{ans}\n" }
      end
      @questions = @questions[0..Config.number]
    end

    def qu_ans(code)
      eval(code)
    rescue => e
      Exception
    end

    def match_ans?(stdin, answer)
      eval(stdin) == answer
    rescue => e
      return false
    end
  end
end
