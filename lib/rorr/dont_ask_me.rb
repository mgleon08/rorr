module Rorr
  class DontAskMe
    def initialize
      @dir       = ['ruby', 'rails']
      @questions = []
      create_question
    end

    def create_question
      @dir.each do |dir|
        Dir["./topic/#{dir}/*.rb"].each_with_index do |file, index|
          content = File.open(file).read.split('#=====')
          @questions << { q: content[0], ans: dir, sol: content[1] }
        end
      end
    end
  end
end
