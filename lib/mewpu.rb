require_relative 'type_psychic'

class Mewpu

  include TypePsychic

  attr_accessor :captured

  def initialize position
    @position = position
    @captured = false
  end

  def position
    @position.clone
  end
end