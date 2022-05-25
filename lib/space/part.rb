# frozen_string_literal: true

module Space
  class Part
    def initialize(cost:, mass:, name:)
      @cost = cost
      @mass = mass
      @name = name
    end

    attr_reader \
      :cost,
      :mass,
      :name
  end
end
