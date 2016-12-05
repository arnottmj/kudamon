require_relative 'type_grass'

class Sourbulb

  include TypeGrass

  attr_accessor :captured

  def initialize position
    @position = position
    @captured = false
  end

  def position
    @position.clone
  end
end