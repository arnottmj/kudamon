require_relative 'type_fire'

class Mancharred

  include TypeFire

  attr_reader :position, :captured

  def initialize position
    @position = position
    @captured = false
  end
end