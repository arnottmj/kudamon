require_relative 'type_rock'

class Rockdude

  include TypeRock

  attr_reader :position, :captured

  def initialize position
    @position = position
    @captured = false
  end
end