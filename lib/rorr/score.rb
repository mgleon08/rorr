module Rorr
  class Score
    @report = []
    @total  = { correct: 0, wrong: 0, skip: 0, retry: 0 }
    class << self
      attr_reader :single, :total, :report

      def init(index)
        @single = { question: "#{index}.", correct: '', wrong: '', skip: '', retry: 0 }
      end

      def add_correct
        total[:correct]  += 1
        single[:correct] = '✓'
      end

      def add_wrong
        total[:wrong]  += 1
        single[:wrong] = '✓'
      end

      def add_skip
        total[:skip]  += 1
        single[:skip] = '✓'
      end

      def add_retry
        total[:retry]  += 1
        single[:retry] += 1
      end

      def add_report
        report << single
      end

      def total_count
        total[:correct] + total[:wrong] + total[:skip]
      end

      def correct_rate
        ((total[:correct].to_f / total_count.to_f) * 100).round(2)
      end

      def wrong_rate
        ((total[:wrong].to_f / total_count.to_f) * 100).round(2)
      end
    end
  end
end
