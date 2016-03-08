require 'spec_helper' 

describe PassengerMetrics do
  it 'should parse with nokigiri' do
    expect(subject).to receive(:passenger_status_output).and_return(fixture_string('status.xml'))
    subject.load!
    expect(subject.info).to be_a(Hash)
    expect(subject.info['get_wait_list_size']).to eq('0')
  end
end