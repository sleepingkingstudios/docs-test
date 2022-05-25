# frozen_string_literal: true

require 'space/part'

module Space
  class FuelTank < Part
    def initialize(containers:, cost:, mass:, name:)
      super(cost: cost, mass: mass, name: name)

      @containers = containers
    end

    attr_reader \
      :containers

    def cost
      super() + containers.map(&:cost).reduce(&:+)
    end

    def dry_mass
      @mass
    end

    def mass
      super() + containers.map(&:mass).reduce(&:+)
    end
  end
end
