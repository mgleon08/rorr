module Rorr
  class Score
    @correct, @wrong, @skip = 0, 0, 0
    class << self
      attr_accessor :correct, :wrong, :skip

      def add_correct
        @correct += 1
      end

      def add_wrong
        @wrong += 1
      end

      def add_skip
        @skip += 1
      end
    end
  end
end
