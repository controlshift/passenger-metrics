require 'spec_helper' 

describe PassengerMetrics::Metrics::ProcessCount do 
  it 'should have a metric name' do
    expect(subject.metric_name).to eq('PassengerProcessCount')
  end
end 