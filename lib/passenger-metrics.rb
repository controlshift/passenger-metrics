require 'aws-sdk'
require 'crack'
require 'byebug'

module PassengerMetrics
  def self.status
    @status ||= PassengerMetrics::Status.new
  end
end

require 'passenger-metrics/metrics/base'
require 'passenger-metrics/metrics/queue_length'
require 'passenger-metrics/status'
require 'passenger-metrics/cloudwatch'
