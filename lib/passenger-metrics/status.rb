module PassengerMetrics
  class Status
    def info
      @info || load!
    end

    def load!
      @info = Crack::XML.parse(passenger_status_output)['info']
    end

    private

    def passenger_status_output
      `passenger-status --show=xml`
    end
  end

end
