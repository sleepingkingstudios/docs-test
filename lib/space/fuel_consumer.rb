# frozen_string_literal: true

module Space
  class FuelConsumer
    def initialize(flow_rate:, fuel:)
      @flow_rate = flow_rate
      @fuel      = fuel
    end

    attr_reader \
      :flow_rate,
      :fuel
  end
end
