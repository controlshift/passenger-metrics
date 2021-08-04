require 'aws-sdk-cloudwatch'
require 'aws-sdk-ec2'
require 'crack'

module PassengerMetrics
  def self.status
    @status ||= PassengerMetrics::Status.new
  end

  def self.instance_id
    @instance_id ||= metadata_client.get('/latest/meta-data/instance-id')
  end

  def self.metadata_client
    @_metadata_client ||= Aws::EC2Metadata.new
  end
end

require 'passenger-metrics/metrics/base'
require 'passenger-metrics/metrics/queue_length'
require 'passenger-metrics/metrics/process_count'
require 'passenger-metrics/status'
require 'passenger-metrics/cloudwatch'
