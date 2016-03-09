require 'spec_helper'

describe PassengerMetrics do
  it 'should defer to stats' do
    expect_any_instance_of(PassengerMetrics::Status).to receive(:passenger_status_output).and_return(fixture_string('status.xml'))
    expect(PassengerMetrics.status.info).to be_a(Hash)
  end
end