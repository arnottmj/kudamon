require_relative 'type_psychic'

class Mewpu

  include TypePsychic

  attr_reader :position, :captured

  def initialize position
    @position = position
    @captured = false
  end
end