require 'spec_helper'

describe PassengerMetrics::Cloudwatch do
  context 'with a queue lenght metric' do
    let(:metric) { PassengerMetrics::Metrics::QueueLength.new }
    subject { PassengerMetrics::Cloudwatch.new }

    before(:each) do
      expect(metric).to receive(:unit).and_return(:count)
      expect(metric).to receive(:value).and_return('0')

      subject.metric = metric
    end


    it 'should delegate to the queue metric' do
      expect(subject.send(:unit)).to eq('Count')
      expect(subject.send(:value)).to eq('0')
    end
  end
end