require_relative 'type_grass'

class Sourbulb

  include TypeGrass

  attr_reader :position, :captured

  def initialize position
    @position = position
    @captured = false
  end
end