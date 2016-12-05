require_relative 'type_rock'

class Rockdude

  include TypeRock

  attr_accessor :captured

  def initialize position
    @position = position
    @captured = false
  end

  def position
    @position.clone
  end
end