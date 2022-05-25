# frozen_string_literal: true

module Space
  class Fuel
    def initialize(density:, name:, unit_cost:, cryogenic: false)
      @cryogenic = !!cryogenic
      @density   = density
      @name      = name
      @unit_cost = unit_cost
    end

    attr_reader \
      :density,
      :name,
      :unit_cost

    def cryogenic?
      @cryogenic
    end
  end
end
