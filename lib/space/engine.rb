# frozen_string_literal: true

require 'space/part'

module Space
  class Engine < Part
    def initialize(consumers:, cost:, mass:, name:, thrust:)
      super(cost: cost, mass: mass, name: name)

      @consumers = consumers
      @thrust    = thrust
    end

    attr_reader \
      :consumers,
      :thrust
  end
end
