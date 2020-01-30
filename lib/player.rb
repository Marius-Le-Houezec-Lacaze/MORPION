# frozen_string_literal: true

# Rubocop dont shoot
class Player
  attr_reader :name, :value
  def initialize(nom, val)
    @name = nom
    @value = val
  end
end
