# frozen_string_literal: true

module Space
  class FuelContainer
    def initialize(amount:, capacity:, fuel:)
      @amount   = amount
      @capacity = capacity
      @fuel     = fuel
    end

    attr_reader \
      :capacity,
      :fuel

    attr_accessor \
      :amount

    def cost
      amount * fuel.unit_cost
    end

    def mass
      amount * fuel.density
    end
  end
end
