require 'crack'

class PassengerMetrics
  def info
    @info
  end

  def load!
    @info = Crack::XML.parse(passenger_status_output)['info']
  end

  private

  def passenger_status_output
    `passenger-status --show=xml`
  end
end
