require 'aws-sdk'
require 'crack'

module PassengerMetrics
  def self.status
    @status ||= PassengerMetrics::Status.new
  end

  def self.instance_id
    @instance_id ||= Net::HTTP.get( URI.parse('http://169.254.169.254/latest/meta-data/instance-id' ) )
  end
end

require 'passenger-metrics/metrics/base'
require 'passenger-metrics/metrics/queue_length'
require 'passenger-metrics/metrics/process_count'
require 'passenger-metrics/status'
require 'passenger-metrics/cloudwatch'
