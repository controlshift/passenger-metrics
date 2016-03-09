module PassengerMetrics
  module Metrics
    class Base
      DEFAULT_VALUE = "0.0"
      DEFAULT_UNIT = nil

      def self.descendants
        ObjectSpace.each_object(Class).select { |klass| klass < self }
      end

      def value
        DEFAULT_VALUE
      end

      def unit
        DEFAULT_UNIT
      end
    end
  end
end