# frozen_string_literal: true

require 'space/part'

module Space
  class Rocket
    def initialize(name:, parts:)
      @name  = name
      @parts = parts
    end

    attr_reader \
      :name,
      :parts

    def cost
      @parts.map(&:cost).reduce(&:+)
    end

    def mass
      @parts.map(&:mass).reduce(&:+)
    end
  end
end
