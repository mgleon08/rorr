module Rorr
  class DontAskMe
    def initialize
      @dir       = ['ruby', 'rails']
      @questions = []
      create_questions
      @questions.shuffle!
    end

    def start
      system "clear"
      UI.puts "\nWelcome to #{"\"Don\'t ask me Ruby or Rails\"".yellow}"
      UI.puts "Let's check whether you remember where Ruby ends and Rails\n"
      @questions.each_with_index do |question, index|
        UI.question(question[:q], index)
        UI.puts "ruby or rails? (Type #{"ruby".green} or #{"rails".green} to answer, #{"skip".blue} to pass, #{"exit".red} to exit )\n\n"
        while answer = UI.gets
          case answer.downcase
          when question[:ans]
            UI.puts "Yes, this is #{question[:ans]}".green
            Score.add_correct
            break
          when 'ruby', 'rails'
            UI.puts "No, this is not #{answer}".red
            Score.add_wrong
            break
          when 'skip'
            UI.puts "Skip the Question".blue
            Score.add_skip
            break
          when 'exit' then exit
          else
            UI.puts_with_delay "Please enter it again".light_blue
          end
        end
        UI.solution(question[:sol])
      end
      UI.result
    end

    private

    def create_questions
      @dir.each do |dir|
        Dir["./topic/#{dir}/*.rb"].each do |file|
          content = File.open(file).read.split('#=====')
          @questions << { q: content[0], ans: dir, sol: content[1] }
        end
      end
    end
  end
end
