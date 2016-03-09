module PassengerMetrics
  module Metrics
    class QueueLength < PassengerMetrics::Metrics::Base
      def unit
        :count
      end

      def value
        PassengerMetrics.status.info['get_wait_list_size']
      end
    end
  end
end