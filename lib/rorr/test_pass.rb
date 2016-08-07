module Rorr
  class TestPass
    attr_accessor :index, :questions

    def initialize
      @questions = []
      create_questions
    end

    def start
      system "clear"
      UI.puts "\nWelcome to #{"\"Make all test pass\"".light_cyan}"
      UI.puts "Let's check how much do you understand ruby or rails\n"
      UI.sleep_with_setting
      Score.start
      @questions.each.with_index(1) do |question, index|
        self.index = index - 1
        Score.init(index)
        generate_file(index)
        while answer = UI.gets
          case answer.downcase
          when 'check'
            if check_answer(index)
              Score.add_correct
              break
            end
            UI.sleep_with_setting
            UI.puts "\nPlease Try Again. Make all tests pass."
            UI.puts "Type #{"check".green} to check, #{UI.skip}, #{UI.exit}"
            Score.add_retry
          when 'skip'
            UI.puts "Skip the Question!".light_blue
            Score.add_skip
            break
          when 'exit' then exit
          else
            UI.puts_with_delay "Please enter again!".light_blue
          end
        end
        Score.add_report
        UI.solution
      end
      Score.finish
      UI.report
    end

    private

    def create_questions
      Dir[File.expand_path("../../../topic/methods/#{Config.level}/*.rb", __FILE__)].each do |file|
        content = File.open(file).read.split("#method\n")
        @questions << { qu: content[0], me: content[1] }
      end
      @questions = @questions[0..Config.number]
    end

    def generate_file(index)
      generate_question(index) unless File.exist?(generate_file_path(index))

      UI.puts "\nQuestion #{basename(index).light_yellow} has been generated."
      UI.puts "See the #{"#{generate_file_path(index)}/README".light_yellow} for question."
      UI.puts "Add your code to #{"#{generate_file_path(index)}/play.rb".light_yellow} for answer."
      UI.puts "\nWhen you save file. Type #{"check".green} to check, #{UI.skip}, #{UI.exit}\n"
    end

    def generate_question(index)
      FileUtils.mkdir_p(generate_file_path(index))

      File.open(generate_file_path(index) + '/README', 'w') do |f|
        f.write read_template(templates_path + '/README.erb')
      end

      File.open(generate_file_path(index) + '/play.rb', 'w') do |f|
        f.write read_template(templates_path + '/play.erb')
      end
    end

    def generate_file_path(index)
      Config.path_prefix + "/rorr/#{Config.level}/#{basename(index)}"
    end

    def templates_path
      File.expand_path("../../../templates", __FILE__)
    end

    def read_template(path)
      ERB.new(File.read(path), nil).result(binding)
    end

    def check_answer(index)
      spec = File.expand_path("../../../spec/check_answer/#{Config.level}/#{basename(index)}_spec.rb", __FILE__)
      load "#{generate_file_path(index)}/play.rb"
      check = RSpec::Core::Runner.run([spec])
      RSpec.clear_examples
      check == 0 ? true : false
    end

    def basename(index)
      index.to_s.rjust(3, '0')
    end
  end
end
