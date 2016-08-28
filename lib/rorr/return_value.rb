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
      Score.start
      @questions.each.with_index(1) do |question, index|
        UI.question(question[:qu], index)
        Score.init(index)
        UI.puts "What's the return value? ( Type the #{"Exception".green} command if you expect an exception, #{UI.skip}, #{UI.exit} )\n\n"
        while answer = UI.gets
          case
          when match_ans?(answer, question[:ans])
            UI.puts "Correct!".green
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
      Score.finish
      UI.report
    end

    private

    def create_questions
      UI.puts "\nCreate Questions...\n"
      Dir[File.expand_path("../../../topic/questions/#{Config.level}/*.rb", __FILE__)].each do |file|
        qu  = UI.coderay(File.read(file))
        ans = qu_ans(File.read(file))
        sol = UI.coderay(ans)
        @questions << { qu: "#{qu}\n", ans: ans, sol: "\n#{sol}\n" }
      end
      @questions = @questions[0..Config.number]
    end

    def qu_ans(code)
      eval(code)
    rescue SyntaxError => e
      SyntaxError
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
