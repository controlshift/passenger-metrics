module PassengerMetrics
  module Metrics
    class ProcessCount < PassengerMetrics::Metrics::Base
      def unit
        :count
      end

      def value
        PassengerMetrics.status.info['process_count']
      end

      def metric_name
        'PassengerProcessCount'
      end
  
    end
  end
end