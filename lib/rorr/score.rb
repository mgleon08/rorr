module Rorr
  class Score
    @report = []
    @total  = { correct: 0, wrong: 0, skip: 0, retry: 0 }
    class << self
      attr_reader :single, :total, :report, :time, :start_time, :finish_time

      def init(index)
        @single = { question: "#{index}.", correct: '', skip: '', retry: 0, color: '' }
      end

      def add_correct
        total[:correct]  += 1
        single[:correct] = '✓'
        single[:color] = 'green'
      end

      def add_wrong
        total[:wrong]  += 1
        single[:correct] = '✗'
        single[:color] = 'red'
      end

      def add_skip
        total[:skip]  += 1
        single[:skip] = '✓'
        single[:color] = 'light_blue'
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

      def skip_rate
        ((total[:skip].to_f / total_count.to_f) * 100).round(2)
      end

      def start
        @start_time = Time.now
      end

      def finish
        @finish_time = Time.now
        @time = (finish_time - start_time).round(2)
      end

      def format_time
        Time.at(Score.time).utc.strftime("%H:%M:%S")
      end
    end
  end
end
